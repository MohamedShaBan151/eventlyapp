import 'package:eventlyapp/gen/assets.gen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  int id;
  String title;
  IconData icon;
  String? designpath;

  CategoryModel({required this.id, required this.title, required this.icon, this.designpath});
  static List<CategoryModel> get categories => [
    CategoryModel(id: 1, title: 'All', icon: Icons.downhill_skiing, ), 
    CategoryModel(id: 2, title: 'Sports', icon: Icons.directions_bike, designpath: Assets.image.sportImageDark.path),
    CategoryModel(id: 3, title: 'Birthday', icon: Icons.cake, designpath: Assets.image.birthdayImageDark.path),
    CategoryModel(id: 4, title: 'Meetings', icon: Icons.groups, designpath: Assets.image.meetingImageDark.path),
    CategoryModel(id: 5, title: 'Workshop', icon: Icons.handyman, designpath: Assets.image.workshopImageDark.path),
    CategoryModel(id: 6, title: 'Eating', icon: Icons.health_and_safety, designpath: Assets.image.eatingImageDark.path),
  ];
}
