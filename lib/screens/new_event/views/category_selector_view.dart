import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:eventlyapp/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategorySelectorView extends StatelessWidget {
  const CategorySelectorView({
    super.key,
    required this.selectedCategory,
    required this.onChanged,
  });
  final CategoryModel selectedCategory;
  final void Function(CategoryModel) onChanged;

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = CategoryModel.categories.sublist(1);
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(spacing: 10,
        children: [
          ClipRRect(borderRadius: BorderRadiusGeometry.circular(16),
            child: Image.asset(selectedCategory.designpath!,
            fit: BoxFit.cover,
            height: (200/817)*MediaQuery.heightOf(context),
            width: double.infinity,
            
            
            ),
          ),
          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                CategoryModel currentCat = categories[index];
                bool isSelected = currentCat.id == selectedCategory.id;
      
                return FilterChip(
                  selected:
                      isSelected, // ✅ This is required for selectedColor to work
                  onSelected: (value) {
                    if (value) {
                      onChanged(currentCat);
                    }
                    // setState(() {
                    //   selectedId = currentCat.id;
                    // });
                    // TODO: Update selected index via setState in StatefulWidget
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(46),
                    side: isSelected
                        ? BorderSide
                              .none // Remove border when selected
                        : BorderSide(
                            color: AppColors.maincolor,
                          ), // Unselected border
                  ),
                  backgroundColor: isSelected
                      ? AppColors.maincolor
                      : Theme.of(
                          context,
                        ).scaffoldBackgroundColor, // Unselected background
                  selectedColor: AppColors.maincolor, // ✅ Selected background
                  showCheckmark: false,
                  // padding: const EdgeInsets.symmetric(horizontal: 70),
                  label: Row(
                    children: [
                      Icon(
                        currentCat.icon,
                        size: 10,
                        color: isSelected
                            ? AppColors.lightbgcolor
                            : AppColors.maincolor,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        currentCat.title,
                        style: TextStyle(
                          color: isSelected
                              ? Theme.of(context).scaffoldBackgroundColor
                              : AppColors.maincolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  const SizedBox(width: 10), // ✅ added here
            ),
          ),
        ],
      ),
    );
  }
}
