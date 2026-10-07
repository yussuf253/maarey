import 'package:flutter/material.dart';

import '../l10n/app_l10n.dart';
import '../services/database_helper.dart';
import 'staff_identity_qr.dart';

/// تطبيق حمولة QR على حقول اسم موظف الوردية ورمزها (كاميرا أو جهاز HID).
class StaffIdentityApply {
  StaffIdentityApply._();

  /// يعيد null عند النجاح، أو رسالة خطأ عربية قصيرة.
  static Future<String?> applyQrPayload({
    required DatabaseHelper db,
    required StaffQrData data,
    required TextEditingController nameCtrl,
    required TextEditingController pinCtrl,
  }) async {
    final row = await db.getUserById(data.userId);
    if (row == null || (row['isActive'] != 1)) {
      return AppL10n.current.siaStaffNotFound;
    }
    final dbPin = (row['shiftAccessPin'] as String?)?.trim() ?? '';
    if (dbPin != data.pin) {
      return AppL10n.current.siaCardMismatch;
    }
    final disp = (row['displayName'] as String?)?.trim() ?? '';
    nameCtrl.text =
        disp.isNotEmpty ? disp : (row['username'] as String? ?? '');
    pinCtrl.text = data.pin;
    return null;
  }

  /// يحدّد المستخدم من QR فقط (لفتح الوردية بكلمة مرور الدخول وليس رمز البطاقة).
  static Future<String?> applyQrPayloadSelectUserOnly({
    required DatabaseHelper db,
    required StaffQrData data,
    required TextEditingController nameCtrl,
  }) async {
    final row = await db.getUserById(data.userId);
    if (row == null || (row['isActive'] != 1)) {
      return AppL10n.current.siaStaffNotFound;
    }
    final disp = (row['displayName'] as String?)?.trim() ?? '';
    nameCtrl.text =
        disp.isNotEmpty ? disp : (row['username'] as String? ?? '');
    return null;
  }

  /// لإغلاق الوردية: التحقق من البطاقة ثم تعبئة حقل رمز الوردية فقط.
  static Future<String?> applyQrPayloadToPinField({
    required DatabaseHelper db,
    required StaffQrData data,
    required TextEditingController pinCtrl,
  }) async {
    final row = await db.getUserById(data.userId);
    if (row == null || (row['isActive'] != 1)) {
      return AppL10n.current.siaStaffNotFound;
    }
    final dbPin = (row['shiftAccessPin'] as String?)?.trim() ?? '';
    if (dbPin != data.pin) {
      return AppL10n.current.siaCardMismatch;
    }
    pinCtrl.text = data.pin;
    return null;
  }
}
