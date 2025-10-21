import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:eventlyapp/gen/assets.gen.dart';
import 'package:eventlyapp/screens/auth/home/fav_tab/fav_tab.dart';
import 'package:eventlyapp/screens/auth/home/home_tab/home_tab.dart';
import 'package:eventlyapp/screens/auth/home/setting_tab/setting_tab.dart';
import 'package:eventlyapp/screens/new_event/new_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainLayerScreen extends StatefulWidget {
  const MainLayerScreen({super.key});
  static const String routeName = '/main-layer';

  @override
  State<MainLayerScreen> createState() => _MainLayerScreenState();
}

class _MainLayerScreenState extends State<MainLayerScreen> {
  List<Widget> tabs = [HomeTab(), Container(), FavTab(), SettingTab()];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentindex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.lightbgcolor,
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(NewEvent.routeName);
          },
          child: const Icon(Icons.add, color: AppColors.lightbgcolor, size: 30),
          shape: const CircleBorder(),
          backgroundColor: Theme.of(
            context,
          ).bottomNavigationBarTheme.backgroundColor,
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        notchMargin: 5,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BottomNavigationBar(
          onTap: (int value) {
            setState(() {
              currentindex = value;
            });
          },
          currentIndex: currentindex,
          items: [
            BottomNavigationBarItem(
              icon: Assets.icon.unselectedHomeIcon.svg(),
              activeIcon: Assets.icon.selectedHomeIcon.svg(),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Assets.icon.unselectedLocationIcon.svg(),
              activeIcon: Assets.icon.selectedLocationIcon.svg(),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              icon: Assets.icon.unselectedHeartIcon.svg(),
              activeIcon: Assets.icon.selectedHeartIcon.svg(),
              label: 'Fav',
            ),
            BottomNavigationBarItem(
              icon: Assets.icon.unselectedPersonIcon.svg(),
              activeIcon: Assets.icon.selectedPersonIcon.svg(),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
