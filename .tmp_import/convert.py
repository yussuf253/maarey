#!/usr/bin/env python3
"""Products_2026-10-07.xlsx -> products_import_2026-10-07.csv (app bulk-import format).

Cleaning rules (agreed with user):
- qty = 0 for all rows (no stock data in source; stocktaking comes later)
- duplicate barcodes: keep first occurrence, blank later ones (barcode is UNIQUE)
- prices: strip 'FDJ' prefix and commas
- expiry: normalize d/m/yyyy -> dd/mm/yyyy (app parses to ISO)
- barcode '0'/empty treated as missing
- rows without a name are dropped
- headers = exact English fallbacks of the app parser (work in any locale)
"""
import csv, re, datetime, collections
import openpyxl

SRC = 'Products_2026-10-07.xlsx'
DST = 'products_import_2026-10-07.csv'

wb = openpyxl.load_workbook(SRC, data_only=True)
rows = list(wb['Sheet1'].iter_rows(min_row=2, values_only=True))

def price(v):
    if v is None:
        return ''
    s = str(v).strip()
    s = re.sub(r'^FDJ\s*', '', s, flags=re.I).replace(',', '')
    f = float(s)
    return str(int(f)) if f == int(f) else str(f)

def expiry(v):
    if v is None:
        return ''
    if isinstance(v, (datetime.datetime, datetime.date)):
        if v.year < 1901:  # 1/1/1900 junk
            return ''
        return v.strftime('%d/%m/%Y')
    s = str(v).strip()
    if not s:
        return ''
    m = re.match(r'^(\d{1,2})/(\d{1,2})/(\d{4})$', s)
    if not m:
        return ''
    d, mo, y = int(m.group(1)), int(m.group(2)), int(m.group(3))
    if y < 1901:  # 1/1/1900 junk
        return ''
    if mo > 12 and d <= 12:  # one US-format row (e.g. 2/27/2026) -> d/m swap
        d, mo = mo, d
    if not (1 <= d <= 31 and 1 <= mo <= 12):
        return ''
    return f'{d:02d}/{mo:02d}/{y:04d}'

def barcode(v):
    if v is None:
        return ''
    s = str(v).strip()
    if s.endswith('.0'):
        s = s[:-2]
    if s in ('', '0'):
        return ''
    return s

def clean(v):
    return '' if v is None else str(v).strip()

out_rows = []
dropped, blanked = [], []
seen_bc = set()
stats = collections.Counter()

for i, r in enumerate(rows, 2):
    name = re.sub(r'\s+', ' ', clean(r[0]))
    if not name:
        dropped.append((i, 'no name'))
        continue
    bc = barcode(r[3])
    if bc and bc in seen_bc:
        blanked.append((i, bc, name))
        bc = ''
    elif bc:
        seen_bc.add(bc)
    cat = clean(r[9])
    exp = expiry(r[7])
    out_rows.append({
        'Name': name,
        'Barcode': bc,
        'Buy Price': price(r[10]),
        'Sell Price': price(r[11]),
        'Quantity': '0',
        'Category': cat,
        'Low Stock': '',
        'Description': clean(r[4]),
        'Supplier': '',
        'Tax': '',
        'Unit': '',
        'Expiry Date': exp,
    })
    if cat: stats['category'] += 1
    if exp: stats['expiry'] += 1
    if bc: stats['barcode'] += 1
    if clean(r[4]): stats['desc'] += 1
    if price(r[10]) in ('', '0'): stats['zero_buy'] += 1
    if price(r[11]) in ('', '0'): stats['zero_sell'] += 1

# guard: no name may contain a raw newline that would break row alignment
for row in out_rows:
    assert '\n' not in row['Name'] and '\r' not in row['Name']

with open(DST, 'w', newline='', encoding='utf-8') as f:
    w = csv.DictWriter(f, fieldnames=list(out_rows[0].keys()), quoting=csv.QUOTE_MINIMAL)
    w.writeheader()
    w.writerows(out_rows)

print(f'wrote {len(out_rows)} rows -> {DST}')
print(f'dropped: {dropped}')
print(f'blanked dup barcodes: {blanked}')
print('stats:', dict(stats))
