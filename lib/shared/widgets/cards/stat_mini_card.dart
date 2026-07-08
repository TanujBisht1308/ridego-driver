import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_typography.dart';
import 'app_card.dart';

/// Small stat tile used in the dashboard's stats row
/// (Completed rides, Distance, Online Time).
class StatMiniCard extends StatelessWidget {
  const StatMiniCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
  });

  final IconData icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      child: Column(
        children: [
          Icon(icon, size: 20, color: AppColors.primaryYellowDark),
          const SizedBox(height: 8),
          Text(value, style: AppTypography.h3),
          const SizedBox(height: 2),
          Text(
            label,
            style: AppTypography.caption,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}