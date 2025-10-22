import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:eventlyapp/gen/assets.gen.dart';
import 'package:eventlyapp/screens/auth/home/setting_tab/widgets/setting_header.dart';
import 'package:eventlyapp/widgets/custom_drobdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingHeader(),
        CustomDrobdownButton<String>(label: 'Language',
          items: [
            DropdownMenuItem(child: Text('Arabic',style: TextStyle(color: AppColors.maincolor,fontSize: 18,fontWeight: FontWeight.bold),), value: 'ar'),
            DropdownMenuItem(child: Text('English',style: TextStyle(color: AppColors.maincolor,fontSize: 18,fontWeight: FontWeight.bold),), value: 'en'),
          ],

          onChanged: (value) {},
        ),
        CustomDrobdownButton<String>(label: 'Theme',
          items: [
            DropdownMenuItem(child: Text('Light',style: TextStyle(color: AppColors.maincolor,fontSize: 18,fontWeight: FontWeight.bold),), value: 'ar'),
            DropdownMenuItem(child: Text('Dark',style: TextStyle(color: AppColors.maincolor,fontSize: 18,fontWeight: FontWeight.bold),), value: 'en'),
          ],

          onChanged: (value) {},
        ),
      ],
    );
  }
  
}
