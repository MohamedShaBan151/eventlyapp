import 'package:flutter/material.dart';

class EventModel {
  String title;
  String description;
  String date;
  bool isFav;
   int catid;
  EventModel({
    required this.title,
    required this.description,
    required this.date,
    required this.isFav ,
    required this.catid,
});
}
