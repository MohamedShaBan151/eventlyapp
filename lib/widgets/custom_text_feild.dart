import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, this.hintText, this.validator, this.prefixIcon, this.suffixIcon});
  final String? hintText;

  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      style: TextStyle(
        color: Theme.of(context).hoverColor,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        
        hintText: hintText,
        border: _getborder(Theme.of(context).hintColor),
        enabledBorder: _getborder(Theme.of(context).hintColor),
        focusedBorder: _getborder(Theme.of(context).colorScheme.primary),
        errorBorder: _getborder(AppColors.errorcolor),
        hintStyle: TextStyle(
          color: Theme.of(context).hoverColor,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        prefixIcon: prefixIcon == null ? null : Padding(
          padding: const EdgeInsets.all(16.0),
          child: prefixIcon,
        ),
        suffixIcon: suffixIcon == null ? null : Padding(
          padding: const EdgeInsets.all(16.0),
          child: suffixIcon,
        ),
      ),
    );
  }

  _getborder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color),
    );
  }
}
