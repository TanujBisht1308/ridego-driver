import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'route_names.dart';
import 'route_paths.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/otp_verification_screen.dart';
import '../../features/auth/presentation/screens/complete_profile_screen.dart';
import '../../features/auth/presentation/screens/document_verification_screen.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/ride/presentation/screens/ride_request_screen.dart';
import '../../features/ride/presentation/screens/ride_accepted_screen.dart';
import '../../features/ride/presentation/screens/reached_pickup_screen.dart';
import '../../features/ride/presentation/screens/ride_in_progress_screen.dart';
import '../../features/ride/presentation/screens/ride_completed_screen.dart';
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RoutePaths.splash,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: RoutePaths.splash,
        name: RouteNames.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RoutePaths.login,
        name: RouteNames.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RoutePaths.otpVerification,
        name: RouteNames.otpVerification,
        builder: (context, state) => const OtpVerificationScreen(),
      ),
      GoRoute(
        path: RoutePaths.completeProfile,
        name: RouteNames.completeProfile,
        builder: (context, state) => const CompleteProfileScreen(),
      ),
      GoRoute(
        path: RoutePaths.documentVerification,
        name: RouteNames.documentVerification,
        builder: (context, state) => const DocumentVerificationScreen(),
      ),
      GoRoute(
        path: RoutePaths.dashboard,
        name: RouteNames.dashboard,
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: RoutePaths.rideRequest,
        name: RouteNames.rideRequest,
        builder: (context, state) => const RideRequestScreen(),
      ),
      GoRoute(
        path: RoutePaths.rideAccepted,
        name: RouteNames.rideAccepted,
        builder: (context, state) => const RideAcceptedScreen(),
      ),
      GoRoute(
        path: RoutePaths.reachedPickup,
        name: RouteNames.reachedPickup,
        builder: (context, state) => const ReachedPickupScreen(),
      ),
      GoRoute(
        path: RoutePaths.rideInProgress,
        name: RouteNames.rideInProgress,
        builder: (context, state) => const RideInProgressScreen(),
      ),
      GoRoute(
        path: RoutePaths.rideCompleted,
        name: RouteNames.rideCompleted,
        builder: (context, state) => const RideCompletedScreen(),
      ),
      GoRoute(
  path: RoutePaths.settings,
  name: RouteNames.settings,
  builder: (context, state) => const SettingsScreen(),
),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Route not found: ${state.uri}'),
      ),
    ),
  );
});