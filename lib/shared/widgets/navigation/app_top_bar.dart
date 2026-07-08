import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_typography.dart';
import '../buttons/icon_circle_button.dart';

/// Recurring pattern: back arrow circle + centered title.
/// Used on Login, OTP, Profile Setup, Document Verification,
/// Earnings, Ride History, Settings.
class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({
    super.key,
    required this.title,
    this.onBack,
    this.dark = false,
    this.actions,
  });

  final String title;
  final VoidCallback? onBack;
  final bool dark;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dark ? AppColors.nearBlack : AppColors.surfaceWhite,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            IconCircleButton(
              icon: Icons.arrow_back_ios_new_rounded,
              onTap: onBack ?? () => Navigator.of(context).maybePop(),
              backgroundColor:
                  dark ? Colors.white12 : AppColors.surfaceWhite,
              iconColor: dark ? Colors.white : AppColors.textPrimary,
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: AppTypography.h3.copyWith(
                  color: dark ? Colors.white : AppColors.textPrimary,
                ),
              ),
            ),
            SizedBox(
              width: 40,
              child: actions != null
                  ? Row(mainAxisSize: MainAxisSize.min, children: actions!)
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}