import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDrobdownButton<T> extends StatelessWidget {
  const CustomDrobdownButton({
    super.key,
    required this.items,
    required this.onChanged,
    this.label,
  });
  final String? label;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: Column(spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Text(
              label!,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          DropdownButtonFormField<T>(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.arrow_drop_down, color: AppColors.maincolor),
      
              border: _getborder(),
              enabledBorder: _getborder(),
              focusedBorder: _getborder(),
            ),
      
            items: items,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }

  _getborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: AppColors.maincolor),
    );
  }
}
