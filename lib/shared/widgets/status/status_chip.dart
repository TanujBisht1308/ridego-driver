import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_typography.dart';

/// Small pill chip — "Verified" (green), "Pending" (gray),
/// "Completed" / "Cancelled" in Ride History.
class StatusChip extends StatelessWidget {
  const StatusChip({
    super.key,
    required this.label,
    required this.isPositive,
  });

  final String label;
  final bool isPositive;

  @override
  Widget build(BuildContext context) {
    final Color bg = isPositive ? AppColors.successBg : AppColors.dangerBg;
    final Color fg = isPositive ? AppColors.success : AppColors.danger;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isPositive) ...[
            Icon(Icons.check_circle, size: 13, color: fg),
            const SizedBox(width: 4),
          ],
          Text(label, style: AppTypography.chipLabel.copyWith(color: fg)),
        ],
      ),
    );
  }
}