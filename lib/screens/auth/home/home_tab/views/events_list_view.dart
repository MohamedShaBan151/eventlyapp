import 'package:eventlyapp/models/event_model.dart';
import 'package:eventlyapp/widgets/event_card.dart';
import 'package:flutter/material.dart';

class EventsListView extends StatelessWidget {
  const EventsListView({super.key, required this.events});
  final List<EventModel> events;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return  EventCard(eventModel: events[index],);
        },
        itemCount: events.length,
        padding: const EdgeInsets.symmetric(vertical: 10),
      ),
    );
  }
}
