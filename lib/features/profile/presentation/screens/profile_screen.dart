import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/routing/route_paths.dart';
import '../../../../shared/widgets/loaders/app_loader.dart';
import '../../../../shared/widgets/navigation/app_top_bar.dart';
import '../providers/profile_controller.dart';
import '../../../auth/presentation/providers/auth_controller.dart';
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key, this.embeddedInNav = false});

  final bool embeddedInNav;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileControllerProvider);

    final body = state.isLoading
        ? const AppLoader()
        : state.profile == null
            ? const Center(child: Text('Failed to load profile'))
            : _ProfileBody(
    profile: state.profile!,
    onSettings: () => context.push(RoutePaths.settings),
    onLogout: () async {
      await ref.read(authControllerProvider.notifier).logout();
      if (context.mounted) {
        context.go(RoutePaths.login);
      }
    },
  );

    if (embeddedInNav) {
      return Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(child: body),
      );
    }
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppTopBar(title: 'Profile'),
      body: SafeArea(child: body),
    );
  }
}

class _ProfileBody extends StatelessWidget {
  const _ProfileBody({required this.profile,
                       required this.onSettings, 
                       required this.onLogout});

  final dynamic profile;
  final VoidCallback onSettings;
  final VoidCallback onLogout;

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: AppColors.primaryYellow,
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.surfaceWhite,
                  ),
                  child: const Icon(Icons.person_rounded,
                      size: 44, color: AppColors.textSecondary),
                ),
                const SizedBox(height: AppSpacing.md),
                Text(profile.fullName, style: AppTypography.h2),
                const SizedBox(height: 4),
                if (profile.isVerifiedDriver)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.md, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceWhite,
                      borderRadius: BorderRadius.circular(AppRadius.pill),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.verified_rounded,
                            size: 14, color: AppColors.success),
                        const SizedBox(width: 4),
                        Text(
                          'Verified Driver',
                          style: AppTypography.chipLabel
                              .copyWith(color: AppColors.success),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star_rounded,
                        color: AppColors.nearBlack, size: 20),
                    const SizedBox(width: 4),
                    Text(
                      profile.rating.toStringAsFixed(1),
                      style: AppTypography.h3,
                    ),
                    const SizedBox(width: AppSpacing.xl),
                    Text(
                      '${profile.totalRides} Rides',
                      style: AppTypography.h3,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              children: [
                _InfoCard(children: [
                  _InfoRow(
                      label: 'Vehicle Number',
                      value: profile.vehicleNumber),
                  const Divider(),
                  _InfoRow(
                      label: 'Vehicle Type', value: profile.vehicleType),
                  const Divider(),
                  _InfoRow(
                      label: 'Member Since', value: profile.memberSince),
                ]),
                const SizedBox(height: AppSpacing.lg),
                _MenuCard(children: [
                  _MenuItem(
                    icon: Icons.description_outlined,
                    label: 'My Documents',
                    onTap: () {},
                  ),
                  _MenuItem(
                    icon: Icons.account_balance_outlined,
                    label: 'Bank Details',
                    onTap: () {},
                  ),
                  _MenuItem(
                    icon: Icons.notifications_outlined,
                    label: 'Notifications',
                    onTap: () {},
                  ),
                  _MenuItem(
                    icon: Icons.help_outline_rounded,
                    label: 'Help & Support',
                    onTap: () {},
                  ),
                  _MenuItem(
                    icon: Icons.settings_outlined,
                    label: 'Settings',
                    onTap: onSettings,
                  ),
                  _MenuItem(
  icon: Icons.logout_rounded,
  label: 'Logout',
  onTap: onLogout,     // ← was: onTap: () {}
  isDestructive: true,
),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.surfaceWhite,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        boxShadow: [
          BoxShadow(color: AppColors.shadow, blurRadius: 8),
        ],
      ),
      child: Column(children: children),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: AppTypography.bodySmall
                  .copyWith(color: AppColors.textSecondary)),
          Text(value, style: AppTypography.cardTitle),
        ],
      ),
    );
  }
}

class _MenuCard extends StatelessWidget {
  const _MenuCard({required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceWhite,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        boxShadow: [
          BoxShadow(color: AppColors.shadow, blurRadius: 8),
        ],
      ),
      child: Column(children: children),
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isDestructive = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    final color =
        isDestructive ? AppColors.danger : AppColors.textPrimary;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadius.lg),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg, vertical: AppSpacing.md),
        child: Row(
          children: [
            Icon(icon, size: 22, color: color),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(label,
                  style: AppTypography.bodyMedium.copyWith(color: color)),
            ),
            if (!isDestructive)
              const Icon(Icons.chevron_right_rounded,
                  color: AppColors.textHint),
          ],
        ),
      ),
    );
  }
}