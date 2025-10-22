import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:eventlyapp/gen/assets.gen.dart';
import 'package:flutter/widgets.dart';

class SettingHeader extends StatelessWidget {
  const SettingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.widthOf(context);
    double height = MediaQuery.widthOf(context);
    return  Container(
          padding: const EdgeInsets.all(16.0),
          width: width,
          height: .4 * height,
          decoration: BoxDecoration(
            color: AppColors.maincolor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64)),
          ),
          child: SafeArea(
            child: Row(spacing: 16,
              
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(62),
                    bottomRight: Radius.circular(62),
                    topRight: Radius.circular(62),
                  ), // optional if you want rounded corners
                  child: Image.asset(
                    // height: 100,width: 100,
                    Assets.image.routeImage.path,
                    fit: BoxFit.cover, // optional: makes image fill its box
                  ),
                ),
                // SizedBox(width: 50,),
                Column(spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'john Safwat',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.lightbgcolor,
                      ),
                    ),
                    Text('mshapan872@gmail.com', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lightbgcolor,
                      ),),
                  ],
                ),
              ],
            ),
          ),
        );
  }
}