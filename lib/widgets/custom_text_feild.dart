import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, this.hintText, this.validator, this.prefixIcon, this.suffixIcon, this.borderColor, this.hintColor, this.label, this.maxLines=1});
  final String? hintText,label;
  final int? maxLines ;

  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? borderColor,hintColor;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [if (label!=null)Text(label!, style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
        TextFormField(
          maxLines: maxLines ,
          validator: validator,
          style: TextStyle(
            color: Theme.of(context).hoverColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            
            hintText: hintText,
            border: _getborder(borderColor?? Theme.of(context).hintColor),
            enabledBorder: _getborder(borderColor??Theme.of(context).hintColor),
            focusedBorder: _getborder(borderColor??Theme.of(context).hintColor),
            errorBorder: _getborder(AppColors.errorcolor),
            hintStyle: TextStyle(
              color: hintColor??Theme.of(context).hoverColor,
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
        ),
      ],
    );
  }

  _getborder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color),
    );
  }
}
