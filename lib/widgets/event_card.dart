import 'dart:math';

import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:eventlyapp/gen/assets.gen.dart';
import 'package:eventlyapp/models/category_model.dart';
import 'package:eventlyapp/models/event_model.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final EventModel eventModel;
  const EventCard({super.key, required this.eventModel});

  @override
  Widget build(BuildContext context) {
    String catImagePath = CategoryModel.categories
        .firstWhere((element) => element.id == eventModel.catid)
        .designpath!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(catImagePath),
          fit: BoxFit.cover,
        ),
      ),
      clipBehavior:
          Clip.antiAlias, // ✅ Ensures the image respects rounded corners
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // ✅ Align text to the start
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 🟣 Top text
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                eventModel.date,
                style: const TextStyle(
                  fontSize: 20,
                  color: AppColors.maincolor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // 🟢 Bottom row with location
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    eventModel.title,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                    height: 24,
                    width: 24,

                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        eventModel.isFav
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: AppColors.maincolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
