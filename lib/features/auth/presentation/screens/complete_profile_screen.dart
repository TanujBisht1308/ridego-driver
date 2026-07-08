import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/routing/route_paths.dart';
import '../../../../shared/widgets/buttons/primary_button.dart';
import '../../../../shared/widgets/inputs/app_text_field.dart';
import '../providers/auth_controller.dart';

class CompleteProfileScreen extends ConsumerStatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  ConsumerState<CompleteProfileScreen> createState() =>
      _CompleteProfileScreenState();
}

class _CompleteProfileScreenState
    extends ConsumerState<CompleteProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _vehicleController = TextEditingController();
  String _selectedVehicleType = 'sedan';

  static const _vehicleTypes = [
    {'id': 'bike', 'label': 'Bike', 'icon': Icons.two_wheeler},
    {'id': 'auto', 'label': 'Auto', 'icon': Icons.electric_rickshaw},
    {'id': 'mini', 'label': 'Mini', 'icon': Icons.local_taxi},
    {'id': 'sedan', 'label': 'Sedan', 'icon': Icons.directions_car},
  ];

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _vehicleController.dispose();
    super.dispose();
  }

  Future<void> _onSave() async {
    if (!_formKey.currentState!.validate()) return;
    final success =
        await ref.read(authControllerProvider.notifier).saveProfile(
              fullName: _nameController.text.trim(),
              email: _emailController.text.trim().isEmpty
                  ? null
                  : _emailController.text.trim(),
              vehicleNumber: _vehicleController.text.trim(),
              vehicleType: _selectedVehicleType,
            );
    if (success && mounted) {
      context.push(RoutePaths.documentVerification);
    } else if (mounted) {
      final error = ref.read(authControllerProvider).errorMessage;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error ?? 'Could not save profile')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

    return Scaffold(
      backgroundColor: AppColors.surfaceWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screenHorizontal,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSpacing.lg),
                InkWell(
                  onTap: () => context.pop(),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.background,
                    ),
                    child: const Icon(Icons.arrow_back_ios_new_rounded,
                        size: 18),
                  ),
                ),
                const SizedBox(height: AppSpacing.xxl),
                Text('Complete Your Profile', style: AppTypography.h1),
                const SizedBox(height: AppSpacing.xxxl),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 96,
                        height: 96,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.background,
                        ),
                        child: const Icon(Icons.person_rounded,
                            size: 48, color: AppColors.textHint),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryYellow,
                          ),
                          child: const Icon(Icons.camera_alt_rounded,
                              size: 16,
                              color: AppColors.textOnYellow),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.xxxl),
                AppTextField(
                  label: 'Full Name',
                  controller: _nameController,
                  hint: 'Enter your full name',
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: AppSpacing.lg),
                AppTextField(
                  label: 'Email (Optional)',
                  controller: _emailController,
                  hint: 'Enter your email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: AppSpacing.lg),
                AppTextField(
                  label: 'Vehicle Number',
                  controller: _vehicleController,
                  hint: 'UP14 AB 1234',
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: AppSpacing.lg),
                Text(
                  'Vehicle Type',
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Row(
                  children: _vehicleTypes.map((type) {
                    final isSelected =
                        _selectedVehicleType == type['id'];
                    return Expanded(
                      child: GestureDetector(
                        onTap: () => setState(
                            () => _selectedVehicleType =
                                type['id'] as String),
                        child: Container(
                          margin: const EdgeInsets.only(
                              right: AppSpacing.sm),
                          padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.md),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.primaryYellow
                                : AppColors.background,
                            borderRadius: BorderRadius.circular(
                                AppRadius.md),
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primaryYellow
                                  : AppColors.divider,
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                type['icon'] as IconData,
                                size: 22,
                                color: isSelected
                                    ? AppColors.textOnYellow
                                    : AppColors.textSecondary,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                type['label'] as String,
                                style: AppTypography.caption.copyWith(
                                  color: isSelected
                                      ? AppColors.textOnYellow
                                      : AppColors.textSecondary,
                                  fontWeight: isSelected
                                      ? FontWeight.w600
                                      : FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: AppSpacing.xxxl),
                PrimaryButton(
                  label: 'Save & Continue',
                  isLoading: authState.isLoading,
                  onPressed: _onSave,
                ),
                const SizedBox(height: AppSpacing.xxl),
              ],
            ),
          ),
        ),
      ),
    );
  }
}