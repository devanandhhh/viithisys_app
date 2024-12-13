import 'package:flutter/material.dart';
import 'package:viithiisys_app/presentation/auth/first_screen.dart';
import 'package:viithiisys_app/presentation/auth/second_screen.dart';
import 'package:viithiisys_app/presentation/auth/sign_in_screen.dart';
import 'package:viithiisys_app/presentation/auth/third_screen.dart';
import 'package:viithiisys_app/presentation/home/home_screen.dart';
import 'package:viithiisys_app/presentation/notification_screen/notification_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        FirstScreen(),
        SecondScreen(),
        ThirdScreen(),
        SignInScreen(),
        NotificationScreen(),
        HomeScreen()
      ],
    );
  }
}
