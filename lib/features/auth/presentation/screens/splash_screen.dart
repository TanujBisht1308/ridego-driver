import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/routing/route_paths.dart';
import '../../../auth/presentation/providers/splash_controller.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateWhenReady();
  }

  Future<void> _navigateWhenReady() async {
  debugPrint("1. Splash started");

  final destination = await ref.read(splashDestinationProvider.future);
  debugPrint("2. Destination = $destination");

  if (!mounted) {
    debugPrint("3. Widget not mounted");
    return;
  }

  final path = switch (destination) {
    SplashDestination.login => RoutePaths.login,
    SplashDestination.completeProfile => RoutePaths.completeProfile,
    SplashDestination.documentVerification =>
        RoutePaths.documentVerification,
    SplashDestination.dashboard => RoutePaths.dashboard,
  };

  debugPrint("4. Going to $path");

  context.go(path);

  debugPrint("5. Navigation called");
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.nearBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xxxl,
            vertical: AppSpacing.xxxl,
          ),
          child: Column(
            children: [
              const Spacer(flex: 3),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: AppColors.primaryYellow,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Icon(
                  Icons.location_on_rounded,
                  color: AppColors.textOnYellow,
                  size: 56,
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'RideGo',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryYellow,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                'DRIVER',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 4,
                  color: Colors.white,
                ),
              ),
              const Spacer(flex: 3),
              const Text(
                'Drive. Earn. Grow.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              Container(
                width: 60,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.primaryYellow,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(height: AppSpacing.xxl),
            ],
          ),
        ),
      ),
    );
  }
}