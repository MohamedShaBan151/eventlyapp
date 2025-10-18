import 'package:eventlyapp/common/theme/app_colors.dart';
import 'package:eventlyapp/gen/assets.gen.dart';
import 'package:eventlyapp/screens/auth/signup.dart';
import 'package:eventlyapp/widgets/custom_main_button.dart';
import 'package:eventlyapp/widgets/custom_outlined_button.dart';
import 'package:eventlyapp/widgets/custom_text_feild.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(''),),
      
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
                hintText: 'email',
                prefixIcon: Assets.icon.emailIcon.svg(),
              ),
              const SizedBox(height: 20),
              CustomTextFeild(
                hintText: 'password',
                prefixIcon: Assets.icon.emailIcon.svg(),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'forgot password?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.maincolor,
                        fontStyle: FontStyle.italic,decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                ],
              ),
              
              
              CustomMainButton(text: 'Login', onPressed: () {}),
              const SizedBox(height: 16),
              Text.rich(  
                TextSpan(
                  text: "Don't have an account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.pushNamed(context, SignupScreen.routeName);},
                      text: 'Create account',
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
          
                        fontWeight: FontWeight.bold,
                        color: AppColors.maincolor,
                        decoration: TextDecoration.underline,
                      ),
                      // Add gesture recognizer if needed for navigation
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Divider(indent: 16,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Expanded(child: Divider(endIndent: 16,)),
                ],
              ),
              CustomOutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Assets.icon.googleIcon.image(),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.maincolor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
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
