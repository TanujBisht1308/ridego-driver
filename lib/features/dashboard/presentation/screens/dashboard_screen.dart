import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../shared/widgets/cards/stat_mini_card.dart';
import '../../../../shared/widgets/navigation/app_bottom_nav.dart';
import '../../../../shared/widgets/status/online_toggle.dart';
import '../../../earnings/presentation/screens/earnings_screen.dart';
import '../../../history/presentation/screens/ride_history_screen.dart';
import '../../../profile/presentation/screens/profile_screen.dart';
import '../providers/bottom_nav_controller.dart';
import '../providers/dashboard_controller.dart';
import 'package:go_router/go_router.dart';
// Add this import at the top of dashboard_screen.dart
import '../../../auth/presentation/providers/auth_controller.dart';
import '../../../../core/routing/route_paths.dart';
import '../../../ride/presentation/providers/ride_controller.dart';
class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavControllerProvider);

    final pages = const [
      _DashboardHomeTab(),
      EarningsScreen(embeddedInNav: true),
      RideHistoryScreen(embeddedInNav: true),
      ProfileScreen(embeddedInNav: true),
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: AppBottomNav(
        currentIndex: currentIndex,
        onTap: (index) =>
            ref.read(bottomNavControllerProvider.notifier).setIndex(index),
      ),
    );
  }
}

class _DashboardHomeTab extends ConsumerWidget {
  const _DashboardHomeTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardState = ref.watch(dashboardControllerProvider);
    final stats = dashboardState.stats;
    // Add inside _DashboardHomeTab build(), before the return:
      ref.listen(rideControllerProvider, (previous, next) {
        if (next.incomingRide != null && previous?.incomingRide == null) {
            context.go(RoutePaths.rideRequest);
  }
});

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () =>
            ref.read(dashboardControllerProvider.notifier).refreshStats(),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screenHorizontal,
            vertical: AppSpacing.lg,
          ),
          
          children: [
            // Inside ListView children, add as first item:
Consumer(
  builder: (context, ref, _) {
    final authState = ref.watch(authControllerProvider);
    final driver = authState.driver;
    if (driver == null) return const SizedBox.shrink();
    if (driver.isDocumentVerified) return const SizedBox.shrink();
    if (!driver.isDocumentSubmitted) return const SizedBox.shrink();
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF8E1),
        borderRadius: BorderRadius.circular(AppRadius.md),
        border: Border.all(color: AppColors.primaryYellow),
      ),
      child: Row(
        children: [
          const Icon(Icons.access_time_rounded,
              color: AppColors.primaryYellowDark, size: 20),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Text(
              'Your documents are under review. You can still go online and accept rides.',
              style: AppTypography.bodySmall.copyWith(
                color: AppColors.primaryYellowDark,
              ),
            ),
          ),
        ],
      ),
    );
  },
),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: dashboardState.isOnline
                            ? AppColors.onlineGreen
                            : AppColors.offlineGray,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      dashboardState.isOnline
                          ? 'You are Online'
                          : 'You are Offline',
                      style: AppTypography.h3,
                    ),
                  ],
                ),
                Row(
                  children: [
                    OnlineToggle(
  isOnline: dashboardState.isOnline,
  onChanged: (_) async {
    await ref
        .read(dashboardControllerProvider.notifier)
        .toggleOnlineStatus();
    final isNowOnline =
        ref.read(dashboardControllerProvider).isOnline;
    if (isNowOnline) {
      ref.read(rideControllerProvider.notifier).startPolling();
    } else {
      ref.read(rideControllerProvider.notifier).stopPolling();
    }
  },
),
                    const SizedBox(width: 4),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.background,
                      ),
                      child: const Icon(Icons.person_rounded,
                          color: AppColors.textPrimary),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xl),
            _EarningsCard(
              isLoading: dashboardState.isLoading,
              amount: stats?.todaysEarnings ?? 0,
              rides: stats?.completedRides ?? 0,
            ),
            const SizedBox(height: AppSpacing.lg),
            Row(
              children: [
                Expanded(
                  child: StatMiniCard(
                    icon: Icons.check_circle_outline_rounded,
                    value: '${stats?.completedRides ?? 0}',
                    label: 'Completed',
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: StatMiniCard(
                    icon: Icons.route_outlined,
                    value:
                        '${stats?.distanceCoveredKm.toStringAsFixed(1) ?? '0.0'} km',
                    label: 'Distance',
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: StatMiniCard(
                    icon: Icons.schedule_rounded,
                    value: stats != null
                        ? '${stats.onlineDuration.inHours}h ${stats.onlineDuration.inMinutes.remainder(60)}m'
                        : '0h 0m',
                    label: 'Online Time',
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xxxl),
            Text(
              dashboardState.isOnline
                  ? 'Looking for ride requests nearby...'
                  : 'Go Online to get ride requests',
              textAlign: TextAlign.center,
              style: AppTypography.bodyMedium
                  .copyWith(color: AppColors.textSecondary),
            ),
            const SizedBox(height: AppSpacing.xl),
            Center(
              child: GestureDetector(
                onTap: () => ref
                    .read(dashboardControllerProvider.notifier)
                    .toggleOnlineStatus(),
                child: Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: dashboardState.isOnline
                        ? AppColors.danger
                        : AppColors.primaryYellow,
                    boxShadow: [
                      BoxShadow(
                        color: (dashboardState.isOnline
                                ? AppColors.danger
                                : AppColors.primaryYellow)
                            .withValues(alpha: 0.35),
                        blurRadius: 24,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.power_settings_new_rounded,
                    size: 36,
                    color: dashboardState.isOnline
                        ? Colors.white
                        : AppColors.textOnYellow,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Center(
              child: Text(
                dashboardState.isOnline ? 'Go Offline' : 'Go Offline',
                style: AppTypography.bodyMedium,
              ),
            ),
            const SizedBox(height: AppSpacing.xxxl),
          ],
        ),
      ),
    );
  }
}

class _EarningsCard extends StatelessWidget {
  const _EarningsCard({
    required this.isLoading,
    required this.amount,
    required this.rides,
  });

  final bool isLoading;
  final double amount;
  final int rides;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.nearBlack,
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today's Earnings",
                  style: AppTypography.bodySmall
                      .copyWith(color: Colors.white70),
                ),
                const SizedBox(height: 6),
                isLoading
                    ? const SizedBox(
                        height: 28,
                        width: 28,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.4,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.primaryYellow),
                        ),
                      )
                    : Text(
                        '₹${amount.toStringAsFixed(0)}',
                        style: AppTypography.earningsAmount,
                      ),
                const SizedBox(height: 4),
                Text(
                  '$rides Rides',
                  style:
                      AppTypography.bodySmall.copyWith(color: Colors.white70),
                ),
              ],
            ),
          ),
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: AppColors.primaryYellow,
              borderRadius: BorderRadius.circular(AppRadius.md),
            ),
            child: const Icon(
              Icons.account_balance_wallet_rounded,
              color: AppColors.textOnYellow,
            ),
          ),
        ],
      ),
    );
  }
}