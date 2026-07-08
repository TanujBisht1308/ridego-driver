import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

/// "You are Online" switch seen top-right of the Home Dashboard.
class OnlineToggle extends StatelessWidget {
  const OnlineToggle({
    super.key,
    required this.isOnline,
    required this.onChanged,
  });

  final bool isOnline;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isOnline,
      onChanged: onChanged,
      activeThumbColor: AppColors.success,
      activeTrackColor: AppColors.successBg,
      inactiveThumbColor: AppColors.offlineGray,
      inactiveTrackColor: AppColors.divider,
    );
  }
}