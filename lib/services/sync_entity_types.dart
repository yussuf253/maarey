/// أسماء كيانات المزامنة (sync_queue.entity_type).
///
/// تجنّب كتابة strings يدوياً في كل مكان — أي typo هنا يكسر المزامنة بصمت.
class SyncEntityTypes {
  // موجودة في النظام الحالي
  static const cashLedger = 'cash_ledger';
  static const workShift = 'work_shift';
  static const expense = 'expense';
  static const expenseCategory = 'expense_category';
  static const customer = 'customer';
  static const customerExtraPhone = 'customer_extra_phone';
  static const supplier = 'supplier';
  static const product = 'product';
  static const productVariant = 'product_variant';
  static const productColor = 'product_color';
  static const productBatch = 'product_batch';
  static const category = 'category';
  static const brand = 'brand';
  static const warehouse = 'warehouse';

  // Financial
  static const supplierBill = 'supplier_bill';
  static const supplierPayout = 'supplier_payout';
  static const customerDebtPayment = 'customer_debt_payment';
  static const installmentPlan = 'installment_plan';
  static const installment = 'installment';
  static const loyaltySetting = 'loyalty_setting';
  static const loyaltyLedger = 'loyalty_ledger';
  static const debtSetting = 'debt_setting';
  static const installmentSetting = 'installment_setting';

  // Inventory
  static const purchaseOrder = 'purchase_order';
  static const purchaseOrderItem = 'purchase_order_item';
  static const poReceipt = 'po_receipt';
  static const stockVoucher = 'stock_voucher';
  static const stockVoucherItem = 'stock_voucher_item';
  static const stocktakingSession = 'stocktaking_session';
  static const stocktakingItem = 'stocktaking_item';

  // Pricing
  static const priceList = 'price_list';
  static const priceListItem = 'price_list_item';

  // Config & metadata
  static const branch = 'branch';
  static const parkedSale = 'parked_sale';
  static const activityLog = 'activity_log';
  static const unitTemplate = 'unit_template';
  static const unitTemplateConversion = 'unit_template_conversion';
  static const printSetting = 'print_setting';
  static const appSetting = 'app_setting';

  // Services + tickets
  static const serviceOrder = 'service_order';
  static const serviceOrderItem = 'service_order_item';
}
