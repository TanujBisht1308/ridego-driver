import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/routing/route_paths.dart';
import '../../../../shared/widgets/buttons/primary_button.dart';
import '../../../../shared/widgets/buttons/secondary_button.dart';
import '../providers/ride_controller.dart';

class RideRequestScreen extends ConsumerWidget {
  const RideRequestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rideState = ref.watch(rideControllerProvider);
    final ride = rideState.incomingRide;

    if (ride == null) {
      return const Scaffold(
        backgroundColor: AppColors.background,
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: AppColors.nearBlack,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.md,
              ),
              child: Column(
                children: [
                  Text(
                    'New Ride Request',
                    style: AppTypography.h3
                        .copyWith(color: AppColors.textOnDark),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${ride.distanceKm.toStringAsFixed(1)} km away',
                    style: AppTypography.bodySmall
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: AppColors.background,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.all(AppSpacing.lg),
                    height: 200,
                    decoration: BoxDecoration(
                      color: AppColors.divider,
                      borderRadius: BorderRadius.circular(AppRadius.lg),
                    ),
                    child: const Center(
                      child: Icon(Icons.map_outlined,
                          size: 48, color: AppColors.textHint),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: AppColors.surfaceWhite,
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
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
                            Text(ride.passengerName,
                                style: AppTypography.cardTitle),
                            Row(
                              children: [
                                const Icon(Icons.star_rounded,
                                    size: 14,
                                    color: AppColors.primaryYellow),
                                const SizedBox(width: 2),
                                Text(
                                  ride.passengerRating.toStringAsFixed(1),
                                  style: AppTypography.bodySmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  _InfoRow(
                    icon: Icons.location_on_rounded,
                    iconColor: AppColors.success,
                    label: 'Pickup Location',
                    value: ride.pickupLocation.address,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  _InfoRow(
                    icon: Icons.location_on_rounded,
                    iconColor: AppColors.danger,
                    label: 'Drop Location',
                    value: ride.dropLocation.address,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  _InfoRow(
                    icon: Icons.currency_rupee_rounded,
                    iconColor: AppColors.primaryYellowDark,
                    label: 'Estimated Fare',
                    value: '₹ ${ride.estimatedFare.toStringAsFixed(0)}',
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  Row(
                    children: [
                      Expanded(
                        child: SecondaryButton(
                          label: 'Reject (15)',
                          color: AppColors.danger,
                          height: 52,
                          onPressed: rideState.isLoading
                              ? null
                              : () async {
                                  await ref
                                      .read(rideControllerProvider.notifier)
                                      .rejectRide(ride.rideId);
                                  if (context.mounted) context.go(RoutePaths.dashboard);
                                },
                        ),
                      ),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: PrimaryButton(
                          label: 'Accept',
                          height: 52,
                          isLoading: rideState.isLoading,
                          onPressed: () async {
                            final success = await ref
                                .read(rideControllerProvider.notifier)
                                .acceptRide(ride.rideId);
                            if (success && context.mounted) {
                              context.go(RoutePaths.rideAccepted);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final Color iconColor;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: iconColor),
        const SizedBox(width: AppSpacing.sm),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: AppTypography.caption),
              Text(value,
                  style: AppTypography.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
            ],
          ),
        ),
      ],
    );
  }
}