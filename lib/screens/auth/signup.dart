import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:eventlyapp/gen/assets.gen.dart';
import 'package:eventlyapp/widgets/custom_main_button.dart';
import 'package:eventlyapp/widgets/custom_outlined_button.dart';
import 'package:eventlyapp/widgets/custom_text_feild.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const String routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register',style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: AppColors.maincolor,
                ),),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          
          child: Column(
            children: [
              Assets.icon.appIcon.image(width: 200, height: 200),
              Text(
                'Evently',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: AppColors.maincolor,
                ),
              ),
              const SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'Name',
                prefixIcon: Assets.icon.personIcon.svg(),
              ),
             const SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'Email',
                prefixIcon: Assets.icon.emailIcon.svg(),
              ),
              const SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'Password',
                prefixIcon: Assets.icon.lockIcon.svg(),
                suffixIcon: Assets.icon.eyeIcon.svg(),
              ),
              const SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'Re Password',
                 prefixIcon: Assets.icon.lockIcon.svg(),
                suffixIcon: Assets.icon.eyeIcon.svg(),
              ),
              const SizedBox(height: 20),
              
              CustomMainButton(text: 'Create Account', onPressed: () {}),
              const SizedBox(height: 16),
              Text.rich(  
                TextSpan(
                  text: "Already have account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: 'Login',
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
          
                        fontWeight: FontWeight.bold,
                        color: AppColors.maincolor,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.pop(context);
                      },
                      // Add gesture recognizer if needed for navigation
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 16),
              
             
              Switch(
                value: true,
                onChanged: (value) {},activeThumbImage: AssetImage( Assets.icon.amercaIcon.path),inactiveThumbImage: AssetImage( Assets.icon.egyptIcon.path),
              ),
            ],
          ),
        ),
      ),
    );
  }
}