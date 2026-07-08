import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/routing/route_paths.dart';
import '../../../../shared/widgets/buttons/primary_button.dart';
import '../providers/ride_controller.dart';

class RideCompletedScreen extends ConsumerWidget {
  const RideCompletedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summary = ref.watch(rideControllerProvider).rideSummary;

    if (summary == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.surfaceWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.screenHorizontal),
          child: Column(
            children: [
              const SizedBox(height: AppSpacing.xxxl),
              Container(
                width: 72,
                height: 72,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.successBg,
                ),
                child: const Icon(Icons.check_rounded,
                    size: 40, color: AppColors.success),
              ),
              const SizedBox(height: AppSpacing.lg),
              Text('Ride Completed', style: AppTypography.h2),
              const SizedBox(height: AppSpacing.xxl),
              _SummaryRow(
                  label: 'Total Fare',
                  value:
                      '₹ ${summary.totalFare.toStringAsFixed(0)}'),
              const Divider(height: AppSpacing.xxl),
              _SummaryRow(
                  label: 'Distance',
                  value:
                      '${summary.distanceKm.toStringAsFixed(1)} km'),
              const SizedBox(height: AppSpacing.sm),
              _SummaryRow(
                  label: 'Time',
                  value: '${summary.durationMinutes} min'),
              const Divider(height: AppSpacing.xxl),
              _SummaryRow(
                  label: 'Ride Fare',
                  value:
                      '₹ ${summary.rideFare.toStringAsFixed(0)}'),
              const SizedBox(height: AppSpacing.sm),
              _SummaryRow(
                  label: 'Incentives',
                  value:
                      '₹ ${summary.incentives.toStringAsFixed(0)}'),
              const SizedBox(height: AppSpacing.sm),
              _SummaryRow(
                  label: 'Tips',
                  value:
                      '₹ ${summary.tips.toStringAsFixed(0)}'),
              const SizedBox(height: AppSpacing.sm),
              _SummaryRow(
                  label: 'Deductions',
                  value:
                      '- ₹ ${summary.deductions.toStringAsFixed(0)}'),
              const Divider(height: AppSpacing.xxl),
              _SummaryRow(
                label: 'Total Earnings',
                value:
                    '₹ ${summary.totalEarnings.toStringAsFixed(0)}',
                isBold: true,
              ),
              const SizedBox(height: AppSpacing.sm),
              _SummaryRow(
                  label: 'Payment Method',
                  value: summary.paymentMethod),
              const SizedBox(height: AppSpacing.md),
              Text(
                'Thank you for driving with RideGo!',
                style: AppTypography.bodySmall,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              PrimaryButton(
                label: 'OK',
                onPressed: () {
                  ref
                      .read(rideControllerProvider.notifier)
                      .clearSummary();
                  context.go(RoutePaths.dashboard);
                },
              ),
              const SizedBox(height: AppSpacing.xl),
            ],
          ),
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.label,
    required this.value,
    this.isBold = false,
  });

  final String label;
  final String value;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    final style = isBold ? AppTypography.cardTitle : AppTypography.bodyMedium;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: style.copyWith(color: AppColors.textSecondary)),
        Text(value, style: style),
      ],
    );
  }
}