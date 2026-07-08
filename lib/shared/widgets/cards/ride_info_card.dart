import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_spacing.dart';
import '../../../core/constants/app_typography.dart';

/// Passenger card shown on Ride Accepted, Reached Pickup,
/// and Ride In Progress screens.
class RideInfoCard extends StatelessWidget {
  const RideInfoCard({
    super.key,
    required this.passengerName,
    required this.passengerRating,
    required this.pickupAddress,
    required this.dropAddress,
    required this.estimatedFare,
    this.onCall,
  });

  final String passengerName;
  final double passengerRating;
  final String pickupAddress;
  final String dropAddress;
  final double estimatedFare;
  final VoidCallback? onCall;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceWhite,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.background,
                ),
                child: const Icon(Icons.person_rounded,
                    color: AppColors.textSecondary),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(passengerName, style: AppTypography.cardTitle),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        const Icon(Icons.star_rounded,
                            size: 14, color: AppColors.primaryYellow),
                        const SizedBox(width: 2),
                        Text(
                          passengerRating.toStringAsFixed(1),
                          style: AppTypography.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onCall,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.successBg,
                  ),
                  child: const Icon(Icons.phone_rounded,
                      color: AppColors.success, size: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          const Divider(),
          const SizedBox(height: AppSpacing.md),
          _LocationRow(
            icon: Icons.location_on_rounded,
            iconColor: AppColors.success,
            label: pickupAddress,
          ),
          const SizedBox(height: AppSpacing.md),
          _LocationRow(
            icon: Icons.location_on_rounded,
            iconColor: AppColors.danger,
            label: dropAddress,
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Estimated Fare',
                  style: AppTypography.bodySmall),
              Text(
                '₹ ${estimatedFare.toStringAsFixed(0)}',
                style: AppTypography.cardTitle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LocationRow extends StatelessWidget {
  const _LocationRow({
    required this.icon,
    required this.iconColor,
    required this.label,
  });

  final IconData icon;
  final Color iconColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: iconColor),
        const SizedBox(width: AppSpacing.sm),
        Expanded(
          child: Text(label,
              style: AppTypography.bodyMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}