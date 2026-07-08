import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../shared/widgets/loaders/app_loader.dart';
import '../../../../shared/widgets/navigation/app_top_bar.dart';
import '../providers/settings_controller.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingsControllerProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppTopBar(
        title: 'Settings',
        onBack: () => context.pop(),
      ),
      body: state.isLoading
          ? const AppLoader()
          : state.settings == null
              ? const Center(child: Text('Failed to load settings'))
              : SafeArea(
                  child: ListView(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    children: [
                      _SettingsCard(children: [
                        _SettingsRow(
                          icon: Icons.tune_rounded,
                          label: 'Online Preferences',
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        _SettingsToggleRow(
                          icon: Icons.volume_up_outlined,
                          label: 'Sound & Vibration',
                          value: state.settings!.soundAndVibration,
                          onChanged: (v) => ref
                              .read(settingsControllerProvider.notifier)
                              .toggleSound(v),
                        ),
                        const Divider(height: 1),
                        _SettingsRow(
                          icon: Icons.navigation_outlined,
                          label: 'Navigation',
                          trailing: Text(
                            state.settings!.navigationApp,
                            style: AppTypography.bodySmall
                                .copyWith(color: AppColors.textSecondary),
                          ),
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        _SettingsRow(
                          icon: Icons.privacy_tip_outlined,
                          label: 'Privacy Policy',
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        _SettingsRow(
                          icon: Icons.description_outlined,
                          label: 'Terms & Conditions',
                          onTap: () {},
                        ),
                        const Divider(height: 1),
                        _SettingsRow(
                          icon: Icons.info_outline_rounded,
                          label: 'About RideGo Driver',
                          trailing: Text(
                            'Version 1.0.0',
                            style: AppTypography.caption,
                          ),
                          onTap: () {},
                        ),
                      ]),
                      const SizedBox(height: AppSpacing.xxl),
                      _SettingsCard(children: [
                        _SettingsRow(
                          icon: Icons.logout_rounded,
                          label: 'Logout',
                          labelColor: AppColors.danger,
                          iconColor: AppColors.danger,
                          showChevron: false,
                          onTap: () {},
                        ),
                      ]),
                    ],
                  ),
                ),
    );
  }
}

class _SettingsCard extends StatelessWidget {
  const _SettingsCard({required this.children});
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

class _SettingsRow extends StatelessWidget {
  const _SettingsRow({
    required this.icon,
    required this.label,
    required this.onTap,
    this.trailing,
    this.labelColor,
    this.iconColor,
    this.showChevron = true,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Widget? trailing;
  final Color? labelColor;
  final Color? iconColor;
  final bool showChevron;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg, vertical: AppSpacing.md),
        child: Row(
          children: [
            Icon(icon,
                size: 22, color: iconColor ?? AppColors.textSecondary),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(
                label,
                style: AppTypography.bodyMedium
                    .copyWith(color: labelColor ?? AppColors.textPrimary),
              ),
            ),
            if (trailing != null) trailing!,
            if (showChevron) ...[
              const SizedBox(width: AppSpacing.sm),
              const Icon(Icons.chevron_right_rounded,
                  color: AppColors.textHint),
            ],
          ],
        ),
      ),
    );
  }
}

class _SettingsToggleRow extends StatelessWidget {
  const _SettingsToggleRow({
    required this.icon,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final IconData icon;
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg, vertical: AppSpacing.sm),
      child: Row(
        children: [
          Icon(icon, size: 22, color: AppColors.textSecondary),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Text(label, style: AppTypography.bodyMedium),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeThumbColor: AppColors.success,
            activeTrackColor: AppColors.successBg,
          ),
        ],
      ),
    );
  }
}