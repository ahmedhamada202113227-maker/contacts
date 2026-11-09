import 'package:contact_app/utils/app_colors.dart';
import 'package:contact_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    required this.hintTxt,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator, this.controller,
  });

  final String hintTxt;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: TextFormField(
        textAlign: .left,
        keyboardType: keyboardType,
        autofocus: true,
        onChanged: onChanged,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          border:OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightBej, width: 1.2),
            borderRadius: BorderRadius.circular(16),
          ) ,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightBej, width: 1.2),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightBej, width: 1.8),
            borderRadius: BorderRadius.circular(16),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.red, width: 1.2),
            borderRadius: BorderRadius.circular(16),
          ),
          hintText: hintTxt,
          hintStyle: AppStyles.light16.copyWith(height: 2.4),
        ),
      ),
    );
  }
}
