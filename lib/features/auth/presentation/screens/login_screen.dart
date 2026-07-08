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
import 'package:lottie/lottie.dart';
import '../../../../core/constants/app_assets.dart';
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _onContinue() async {
    if (!_formKey.currentState!.validate()) return;
    final phone = '+91${_phoneController.text.trim()}';
    final success =
        await ref.read(authControllerProvider.notifier).sendOtp(phone);
    if (success && mounted) {
      context.push(RoutePaths.otpVerification);
    } else if (mounted) {
      final error = ref.read(authControllerProvider).errorMessage;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error ?? 'Something went wrong')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

    return Scaffold(
      backgroundColor: AppColors.surfaceWhite,
      body: SafeArea(
        child: Padding(
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
                const SizedBox(height: AppSpacing.xxxl),
                RichText(
                  text: TextSpan(
                    style: AppTypography.h1,
                    children: const [
                      TextSpan(text: 'Welcome to\n'),
                      TextSpan(
                        text: 'RideGo',
                        style: TextStyle(color: AppColors.primaryYellow),
                      ),
                      TextSpan(text: ' Driver'),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  'Enter your mobile number to continue',
                  style: AppTypography.bodyMedium
                      .copyWith(color: AppColors.textSecondary),
                ),
                const SizedBox(height: AppSpacing.xxxl),
                // Illustration placeholder matching the car illustration in design
                Center(
                  child: Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(AppRadiusValue),
                    ),
                    child: Lottie.asset(
                     AppAssets.welcomecaranimation,
                             fit: BoxFit.contain,
                             repeat: true,
                                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.xxxl),
                AppTextField(
                  controller: _phoneController,
                  hint: 'Enter mobile number',
                  keyboardType: TextInputType.phone,
                  prefixText: '+91  ',
                  validator: (value) {
                    if (value == null || value.trim().length != 10) {
                      return 'Enter a valid 10-digit mobile number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppSpacing.xxl),
                PrimaryButton(
                  label: 'Continue',
                  isLoading: authState.isLoading,
                  onPressed: _onContinue,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.xl),
                  child: Text(
                    'By continuing, you agree to our\nTerms & Conditions',
                    textAlign: TextAlign.center,
                    style: AppTypography.caption,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const double AppRadiusValue = 16;