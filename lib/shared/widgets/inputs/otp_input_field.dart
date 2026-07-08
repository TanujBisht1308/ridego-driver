import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../core/constants/app_colors.dart';

/// The 4-box OTP input seen on the OTP Verification screen.
class OtpInputField extends StatelessWidget {
  const OtpInputField({
    super.key,
    required this.controller,
    required this.onCompleted,
    this.length = 4,
  });

  final TextEditingController controller;
  final void Function(String) onCompleted;
  final int length;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: length,
      controller: controller,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      onCompleted: onCompleted,
      onChanged: (_) {},
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12),
        fieldHeight: 56,
        fieldWidth: 56,
        activeColor: AppColors.primaryYellow,
        selectedColor: AppColors.primaryYellow,
        inactiveColor: AppColors.divider,
        activeFillColor: AppColors.surfaceWhite,
        selectedFillColor: AppColors.surfaceWhite,
        inactiveFillColor: AppColors.surfaceWhite,
      ),
      enableActiveFill: true,
    );
  }
}