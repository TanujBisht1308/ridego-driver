import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../shared/widgets/loaders/app_loader.dart';
import '../../../../shared/widgets/navigation/app_top_bar.dart';
import '../../../../shared/widgets/buttons/primary_button.dart';
import '../../domain/entities/earnings_entity.dart';
import '../providers/earnings_controller.dart';
import 'package:intl/intl.dart';

class EarningsScreen extends ConsumerWidget {
  const EarningsScreen({super.key, this.embeddedInNav = false});

  final bool embeddedInNav;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(earningsControllerProvider);

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
                  Text('Earnings', style: AppTypography.h2),
                  Icon(Icons.calendar_month_outlined,
                      color: AppColors.textSecondary),
                ],
              ),
            ),
          _FilterTabs(
            selected: state.selectedFilter,
            onChanged: (f) =>
                ref.read(earningsControllerProvider.notifier).setFilter(f),
          ),
          Expanded(
            child: state.isLoading
                ? const AppLoader()
                : state.showTransactions
                    ? _TransactionsList(
                        transactions: state.transactions ?? [])
                    : _EarningsBody(
                        earnings: state.earnings,
                        onViewTransactions: () => ref
                            .read(earningsControllerProvider.notifier)
                            .loadTransactions(),
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
      appBar: const AppTopBar(title: 'Earnings'),
      body: body,
    );
  }
}

class _FilterTabs extends StatelessWidget {
  const _FilterTabs({required this.selected, required this.onChanged});

  final EarningsFilter selected;
  final ValueChanged<EarningsFilter> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surfaceWhite,
      padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg, vertical: AppSpacing.sm),
      child: Row(
        children: EarningsFilter.values.map((f) {
          final isSelected = f == selected;
          final label = f.name[0].toUpperCase() + f.name.substring(1);
          return Expanded(
            child: GestureDetector(
              onTap: () => onChanged(f),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.primaryYellow
                      : AppColors.background,
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                ),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: AppTypography.bodySmall.copyWith(
                    fontWeight: FontWeight.w600,
                    color: isSelected
                        ? AppColors.textOnYellow
                        : AppColors.textSecondary,
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

class _EarningsBody extends StatelessWidget {
  const _EarningsBody({required this.earnings, required this.onViewTransactions});

  final EarningsEntity? earnings;
  final VoidCallback onViewTransactions;

  @override
  Widget build(BuildContext context) {
    if (earnings == null) return const SizedBox.shrink();

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: AppColors.nearBlack,
            borderRadius: BorderRadius.circular(AppRadius.lg),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today's Earnings",
                style: AppTypography.bodySmall
                    .copyWith(color: Colors.white70),
              ),
              const SizedBox(height: 6),
              Text(
                '₹${earnings!.totalEarnings.toStringAsFixed(0)}',
                style: AppTypography.earningsAmount,
              ),
              const SizedBox(height: 4),
              Text(
                '${earnings!.totalRides} Rides',
                style: AppTypography.bodySmall
                    .copyWith(color: Colors.white70),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        _EarningsRow(
            label: 'Ride Fare',
            value: '₹ ${earnings!.rideFare.toStringAsFixed(0)}'),
        const Divider(height: AppSpacing.xxl),
        _EarningsRow(
            label: 'Incentives',
            value: '₹ ${earnings!.incentives.toStringAsFixed(0)}'),
        const Divider(height: AppSpacing.xxl),
        _EarningsRow(label: 'Tips', value: '₹ ${earnings!.tips.toStringAsFixed(0)}'),
        const Divider(height: AppSpacing.xxl),
        _EarningsRow(
            label: 'Deductions',
            value: '- ₹ ${earnings!.deductions.toStringAsFixed(0)}'),
        const Divider(height: AppSpacing.xxl),
        _EarningsRow(
          label: 'Total Earnings',
          value:
              '₹ ${earnings!.totalEarningsAfterDeductions.toStringAsFixed(0)}',
          isBold: true,
        ),
        const SizedBox(height: AppSpacing.xxxl),
        PrimaryButton(
          label: 'View Transactions',
          onPressed: onViewTransactions,
        ),
      ],
    );
  }
}

class _EarningsRow extends StatelessWidget {
  const _EarningsRow({
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

class _TransactionsList extends StatelessWidget {
  const _TransactionsList({required this.transactions});

  final List<TransactionEntity> transactions;

  @override
  Widget build(BuildContext context) {
    if (transactions.isEmpty) {
      return const Center(
        child: Text('No transactions found'),
      );
    }
    return ListView.separated(
      padding: const EdgeInsets.all(AppSpacing.lg),
      itemCount: transactions.length,
      separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
      itemBuilder: (context, index) {
        final t = transactions[index];
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
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${t.pickupAddress} → ${t.dropAddress}',
                      style: AppTypography.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      DateFormat('dd MMM yyyy, hh:mm a').format(t.date),
                      style: AppTypography.caption,
                    ),
                  ],
                ),
              ),
              Text(
                '₹ ${t.fare.toStringAsFixed(0)}',
                style: AppTypography.cardTitle,
              ),
            ],
          ),
        );
      },
    );
  }
}