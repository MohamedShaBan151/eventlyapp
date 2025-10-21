import 'package:eventlyapp/models/event_model.dart';
import 'package:eventlyapp/screens/auth/home/home_tab/views/events_list_view.dart';
import 'package:flutter/material.dart';

import 'package:eventlyapp/screens/auth/home/home_tab/views/home_header.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<EventModel> events = List.generate(
      5,
      (index) => EventModel(
        title: 'title$index',
        description: '',
        date: '22\n Nov',
        isFav: index % 2 == 0,
        catid: 2,
      ),
    );
    return Column(
      children: [
        HomeHeader(),
        EventsListView(events: events),
      ],
    );
  }
}
