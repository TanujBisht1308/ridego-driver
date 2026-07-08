import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/routing/route_paths.dart';
import '../../../../shared/widgets/buttons/secondary_button.dart';
import '../providers/ride_controller.dart';
import '../../../../shared/widgets/maps/driver_ride_map.dart';
class RideInProgressScreen extends ConsumerStatefulWidget {
  const RideInProgressScreen({super.key});

  @override
  ConsumerState<RideInProgressScreen> createState() =>
      _RideInProgressScreenState();
}

class _RideInProgressScreenState
    extends ConsumerState<RideInProgressScreen> {
  Timer? _timer;
  int _elapsedSeconds = 0;

  bool _rideStarted = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _promptForOtp());
  }

  Future<void> _promptForOtp() async {
    final otpController = TextEditingController();
    final otp = await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text('Enter Ride OTP', style: TextStyle(fontWeight: FontWeight.w900)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Ask the passenger for their 4-digit code to start the ride.'),
            const SizedBox(height: 16),
            TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              maxLength: 4,
              autofocus: true,
              decoration: const InputDecoration(counterText: '', hintText: '••••'),
              style: const TextStyle(fontSize: 24, letterSpacing: 8, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, otpController.text.trim()),
            child: const Text('Verify & Start'),
          ),
        ],
      ),
    );

    if (otp == null || otp.length != 4) {
      // Re-prompt if dismissed/empty — ride can't proceed without OTP.
      if (mounted) _promptForOtp();
      return;
    }

    final success = await ref.read(rideControllerProvider.notifier).startRide(otp);
    if (!mounted) return;

    if (success) {
      setState(() => _rideStarted = true);
      _timer = Timer.periodic(const Duration(seconds: 1), (_) {
        setState(() => _elapsedSeconds++);
      });
    } else {
      final error = ref.read(rideControllerProvider).errorMessage;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error ?? 'Invalid OTP')),
      );
      _promptForOtp(); // let them try again
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get _elapsedTime {
    final minutes = _elapsedSeconds ~/ 60;
    final seconds = _elapsedSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final rideState = ref.watch(rideControllerProvider);
    final ride = rideState.activeRide;

    if (ride == null || !_rideStarted) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: AppColors.surfaceWhite,
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg, vertical: AppSpacing.md),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ride In Progress',
                      style: AppTypography.h3),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.md, vertical: AppSpacing.xs),
                    decoration: BoxDecoration(
                      color: AppColors.dangerBg,
                      borderRadius:
                          BorderRadius.circular(AppRadius.pill),
                    ),
                    child: Text(
                      'Emergency',
                      style: AppTypography.chipLabel
                          .copyWith(color: AppColors.danger),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: DriverRideMap(ride: ride),
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
                  Row(
                    children: [
                      const Icon(Icons.location_on_rounded,
                          size: 18, color: AppColors.danger),
                      const SizedBox(width: AppSpacing.sm),
                      Expanded(
                        child: Text(
                          ride.dropLocation.address,
                          style: AppTypography.bodyMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        '₹ ${ride.estimatedFare.toStringAsFixed(0)}',
                        style: AppTypography.cardTitle,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Distance  ${ride.distanceKm.toStringAsFixed(1)} km',
                        style: AppTypography.bodySmall,
                      ),
                      Text(
                        'Time  $_elapsedTime',
                        style: AppTypography.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  SecondaryButton(
                    label: 'End Ride',
                    color: AppColors.danger,
                    isLoading: rideState.isLoading,
                    onPressed: () async {
                      final success = await ref
                          .read(rideControllerProvider.notifier)
                          .completeRide();
                      if (success && context.mounted) {
                        context.go(RoutePaths.rideCompleted);
                      }
                    },
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