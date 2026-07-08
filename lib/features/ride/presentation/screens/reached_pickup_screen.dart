import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/routing/route_paths.dart';
import '../../../../shared/widgets/buttons/primary_button.dart';
import '../../../../shared/widgets/navigation/app_top_bar.dart';
import '../providers/ride_controller.dart';

class ReachedPickupScreen extends ConsumerWidget {
  const ReachedPickupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rideState = ref.watch(rideControllerProvider);
    final ride = rideState.activeRide;

    if (ride == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppTopBar(title: 'Reached Pickup'),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  color: AppColors.divider,
                  child: const Center(
                    child: Icon(Icons.map_outlined,
                        size: 48, color: AppColors.textHint),
                  ),
                ),
                Positioned(
                  top: AppSpacing.lg,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.lg,
                          vertical: AppSpacing.sm),
                      decoration: BoxDecoration(
                        color: AppColors.nearBlack,
                        borderRadius:
                            BorderRadius.circular(AppRadius.pill),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Reached Pickup',
                            style: AppTypography.bodyMedium
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Wait for Passenger',
                            style: AppTypography.bodySmall
                                .copyWith(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
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
                    GestureDetector(
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
                const SizedBox(height: AppSpacing.md),
                Row(
                  children: [
                    const Icon(Icons.location_on_rounded,
                        size: 18, color: AppColors.success),
                    const SizedBox(width: AppSpacing.sm),
                    Expanded(
                      child: Text(
                        ride.pickupLocation.address,
                        style: AppTypography.bodyMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xl),
                PrimaryButton(
                  label: 'Passenger Picked Up',
                  isLoading: rideState.isLoading,
                  onPressed: () async {
                    final success = await ref
                        .read(rideControllerProvider.notifier)
                        .reachedPickup();
                    if (success && context.mounted) {
                      context.go(RoutePaths.rideInProgress);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}