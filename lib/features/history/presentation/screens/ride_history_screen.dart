import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../shared/widgets/loaders/app_loader.dart';
import '../../../../shared/widgets/navigation/app_top_bar.dart';
import '../../../../shared/widgets/empty_state/empty_state_widget.dart';
import '../../domain/entities/ride_history_entity.dart';
import '../providers/ride_history_controller.dart';

class RideHistoryScreen extends ConsumerWidget {
  const RideHistoryScreen({super.key, this.embeddedInNav = false});

  final bool embeddedInNav;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rideHistoryControllerProvider);

    final body = SafeArea(
      child: Column(
        children: [
          if (embeddedInNav)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.md,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ride History', style: AppTypography.h2),
                ],
              ),
            ),
          _StatusFilterChips(
            selected: state.selectedStatus,
            onChanged: (s) => ref
                .read(rideHistoryControllerProvider.notifier)
                .setFilter(s),
          ),
          Expanded(
            child: state.isLoading
                ? const AppLoader()
                : state.rides.isEmpty
                    ? const EmptyStateWidget(
                        icon: Icons.history_rounded,
                        title: 'No rides found',
                        subtitle: 'Your ride history will appear here',
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(AppSpacing.lg),
                        itemCount: state.rides.length,
                        separatorBuilder: (_, __) =>
                            const SizedBox(height: AppSpacing.md),
                        itemBuilder: (context, index) =>
                            _RideHistoryCard(ride: state.rides[index]),
                      ),
          ),
        ],
      ),
    );

    if (embeddedInNav) {
      return Scaffold(backgroundColor: AppColors.background, body: body);
    }
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppTopBar(title: 'Ride History'),
      body: body,
    );
  }
}

class _StatusFilterChips extends StatelessWidget {
  const _StatusFilterChips(
      {required this.selected, required this.onChanged});

  final RideHistoryStatus selected;
  final ValueChanged<RideHistoryStatus> onChanged;

  @override
  Widget build(BuildContext context) {
    const labels = {
      RideHistoryStatus.all: 'All',
      RideHistoryStatus.completed: 'Completed',
      RideHistoryStatus.cancelled: 'Cancelled',
    };

    return Container(
      color: AppColors.surfaceWhite,
      padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg, vertical: AppSpacing.sm),
      child: Row(
        children: RideHistoryStatus.values.map((s) {
          final isSelected = s == selected;
          return Padding(
            padding: const EdgeInsets.only(right: AppSpacing.sm),
            child: GestureDetector(
              onTap: () => onChanged(s),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.md, vertical: AppSpacing.sm),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.primaryYellow
                      : AppColors.background,
                  borderRadius: BorderRadius.circular(AppRadius.pill),
                ),
                child: Text(
                  labels[s]!,
                  style: AppTypography.chipLabel.copyWith(
                    color: isSelected
                        ? AppColors.textOnYellow
                        : AppColors.textSecondary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _RideHistoryCard extends StatelessWidget {
  const _RideHistoryCard({required this.ride});

  final RideHistoryEntity ride;

  @override
  Widget build(BuildContext context) {
    final isCompleted = ride.status == 'completed';
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surfaceWhite,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on_rounded,
                            size: 14, color: AppColors.success),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            ride.pickupAddress,
                            style: AppTypography.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.location_on_rounded,
                            size: 14, color: AppColors.danger),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            ride.dropAddress,
                            style: AppTypography.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Text(
                '₹ ${ride.fare.toStringAsFixed(0)}',
                style: AppTypography.cardTitle,
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          const Divider(),
          const SizedBox(height: AppSpacing.sm),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat('dd MMM yyyy, hh:mm a').format(ride.date),
                style: AppTypography.caption,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm, vertical: 4),
                decoration: BoxDecoration(
                  color: isCompleted
                      ? AppColors.successBg
                      : AppColors.dangerBg,
                  borderRadius: BorderRadius.circular(AppRadius.pill),
                ),
                child: Text(
                  isCompleted ? 'Completed' : 'Cancelled',
                  style: AppTypography.caption.copyWith(
                    color: isCompleted
                        ? AppColors.success
                        : AppColors.danger,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}