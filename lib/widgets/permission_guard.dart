import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/generated/app_localizations.dart';
import '../providers/auth_provider.dart';
import '../providers/shift_provider.dart';
import '../services/permission_service.dart';

class PermissionGuard extends StatelessWidget {
  const PermissionGuard({
    super.key,
    required this.permissionKey,
    required this.child,
    this.fallback,
  });

  final String permissionKey;
  final Widget child;
  final Widget? fallback;

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();
    final shift = context.watch<ShiftProvider>();
    final activeShift = shift.activeShift;
    return FutureBuilder<bool>(
      key: ValueKey<String>(
        '${auth.userId}_${activeShift?['id']}_${activeShift?['shiftStaffUserId']}',
      ),
      future: PermissionService.instance.canForSession(
        sessionUserId: auth.userId,
        sessionRoleKey: auth.isAdmin ? 'admin' : 'staff',
        activeShift: activeShift,
        permissionKey: permissionKey,
      ),
      builder: (context, snap) {
        if (!snap.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snap.data == true) return child;
        return fallback ??
            Center(child: Text(AppLocalizations.of(context)?.navNoPermission ?? 'ليس لديك صلاحية للوصول إلى هذه الشاشة'));
      },
    );
  }
}
