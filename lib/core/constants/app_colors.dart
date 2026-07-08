import 'package:flutter/material.dart';

/// Color palette extracted directly from the RideGo Driver design spec.
class AppColors {
  AppColors._();

  // Brand
  static const Color primaryYellow = Color(0xFFFFC107);
  static const Color primaryYellowDark = Color(0xFFE6AC00);
  static const Color black = Color(0xFF1A1A1A);
  static const Color nearBlack = Color(0xFF121212);

  // Surfaces
  static const Color background = Color(0xFFF5F6F8);
  static const Color surfaceWhite = Color(0xFFFFFFFF);
  static const Color cardBorder = Color(0xFFEFEFEF);

  // Text
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textHint = Color(0xFF9CA3AF);
  static const Color textOnDark = Color(0xFFFFFFFF);
  static const Color textOnYellow = Color(0xFF1A1A1A);

  // Status
  static const Color success = Color(0xFF22C55E);
  static const Color successBg = Color(0xFFE8F9EE);
  static const Color danger = Color(0xFFEF4444);
  static const Color dangerBg = Color(0xFFFDECEC);
  static const Color warning = Color(0xFFFFC107);
  static const Color info = Color(0xFF3B82F6);

  // Ride status specific
  static const Color onlineGreen = Color(0xFF22C55E);
  static const Color offlineGray = Color(0xFF9CA3AF);
  static const Color mapRoute = Color(0xFF2563EB);

  // Misc
  static const Color divider = Color(0xFFE5E7EB);
  static const Color shadow = Color(0x14000000);
  static const Color disabled = Color(0xFFD1D5DB);
}