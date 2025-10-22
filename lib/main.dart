import 'package:eventlyapp/common/theme/app_theme.dart';
import 'package:eventlyapp/screens/auth/home/main_layer_screen.dart';
import 'package:eventlyapp/screens/auth/login.dart';
import 'package:eventlyapp/screens/auth/signup.dart';
import 'package:eventlyapp/screens/new_event/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
        MainLayerScreen.routeName: (context) => const MainLayerScreen(),
        NewEvent.routeName: (context) => const NewEvent(),
      },

      
      initialRoute: MainLayerScreen.routeName,
    );
  }
}

