import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:eventlyapp/models/event_model.dart';
import 'package:eventlyapp/screens/auth/home/home_tab/views/events_list_view.dart';
import 'package:eventlyapp/widgets/custom_text_feild.dart';
import 'package:eventlyapp/widgets/event_card.dart';
import 'package:flutter/material.dart';

class FavTab extends StatelessWidget {
  const FavTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<EventModel> events = List.generate(
      4,
      (index) => EventModel(
        title: 'title$index',
        description: '',
        date: '22\n Nov',
        isFav: index % 2 == 0,
        catid:index+2,
      ),
    );
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFeild(
              hintText: 'Search for Event',
              hintColor: AppColors.maincolor,
              prefixIcon: Icon(Icons.search_sharp, color: AppColors.maincolor),
              borderColor: AppColors.maincolor,
            ),
          ),
          EventsListView(events: events)
        ],
      ),
    );
  }
}
