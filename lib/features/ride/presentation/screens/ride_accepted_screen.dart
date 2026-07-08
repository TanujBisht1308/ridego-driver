import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/routing/route_paths.dart';
import '../../../../shared/widgets/buttons/primary_button.dart';
import '../../../../shared/widgets/navigation/app_top_bar.dart';
import '../../../../shared/widgets/cards/ride_info_card.dart';
import '../providers/ride_controller.dart';
import '../../../../shared/widgets/maps/driver_ride_map.dart';
class RideAcceptedScreen extends ConsumerWidget {
  const RideAcceptedScreen({super.key});

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
      appBar: AppTopBar(
        title: 'Ride Accepted',
        onBack: () => context.go(RoutePaths.dashboard),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                  vertical: AppSpacing.sm, horizontal: AppSpacing.md),
              decoration: BoxDecoration(
                color: AppColors.successBg,
                borderRadius: BorderRadius.circular(AppRadius.sm),
              ),
              child: Text(
                'Navigate to Pickup\n${ride.distanceKm.toStringAsFixed(1)} km away',
                textAlign: TextAlign.center,
                style: AppTypography.bodyMedium
                    .copyWith(color: AppColors.success),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              child: DriverRideMap(ride: ride),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg),
            child: RideInfoCard(
              passengerName: ride.passengerName,
              passengerRating: ride.passengerRating,
              pickupAddress: ride.pickupLocation.address,
              dropAddress: ride.dropLocation.address,
              estimatedFare: ride.estimatedFare,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: PrimaryButton(
              label: 'Start Navigation',
              onPressed: () => context.go(RoutePaths.reachedPickup),
            ),
          ),
        ],
      ),
    );
  }
}