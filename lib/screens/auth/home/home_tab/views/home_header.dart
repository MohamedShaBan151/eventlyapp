import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:eventlyapp/models/category_model.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back,',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.lightbgcolor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 11),
                    Text(
                      'John Safwat',
                      style: TextStyle(
                        fontSize: 24,
                        color: AppColors.lightbgcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 11),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20,
                          color: AppColors.lightbgcolor,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Cairo, Egypt',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.lightbgcolor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  height: 33,
                  width: 33,
                  child: IconButton(
                    icon: Icon(
                      Icons.brightness_5_sharp,
                      color: AppColors.lightbgcolor,
                    ),
                    style: IconButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 33,
                  height: 33,

                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: AppColors.lightbgcolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    child: Text(
                      'En',
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).bottomNavigationBarTheme.backgroundColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            filterview(),
          ],
        ),
      ),
    );
  }
}

class filterview extends StatefulWidget {
  const filterview({super.key});

  @override
  State<filterview> createState() => _filterviewState();
}

class _filterviewState extends State<filterview> {
  int selectedid = CategoryModel.categories.first.id;
  @override
  Widget build(BuildContext context) {
    List categories = CategoryModel.categories;
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          CategoryModel currantcat = categories[index];
          bool isSelected = selectedid==currantcat.id; // TODO: Replace with real selection logic
          return FilterChip(
            selected:
                isSelected, // ✅ This is required for selectedColor to work
            onSelected: (value) {
              setState(() {
                selectedid = currantcat.id;
              });
              // TODO: Update selected index via setState in StatefulWidget
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(46),
              side: isSelected
                  ? BorderSide
                        .none // Remove border when selected
                  : BorderSide(
                      color: Theme.of(context).focusColor,
                    ), // Unselected border
            ),
            backgroundColor: Theme.of(
              context,
            ).bottomNavigationBarTheme.backgroundColor, // Unselected background
            selectedColor: Theme.of(
              context,
            ).focusColor, // ✅ Selected background -> light version of your red
            showCheckmark: false,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            label: Row(
              children: [
                Icon(
                  currantcat.icon,
                  size: 10,
                  color: isSelected
                      ? Theme.of(context)
                            .splashColor // Contrast for icon when selected
                      : AppColors.lightbgcolor,
                ),
                SizedBox(width: 6),
                Text(
                  currantcat.title,
                  style: TextStyle(
                    color: isSelected
                        ? Theme.of(context).splashColor
                        : AppColors.lightbgcolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: CategoryModel.categories.length,
      ),
    );
  }
}
