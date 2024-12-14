import 'package:flutter/material.dart';
import 'package:viithiisys_app/presentation/auth/first_screen.dart';
import 'package:viithiisys_app/presentation/auth/second_screen.dart';
import 'package:viithiisys_app/presentation/auth/sign_in_screen.dart';
import 'package:viithiisys_app/presentation/auth/third_screen.dart';
import 'package:viithiisys_app/presentation/home/home_screen.dart';
import 'package:viithiisys_app/presentation/notification_screen/notification_screen.dart';
import 'package:viithiisys_app/presentation/skelton_home/skelton_home.dart';

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
        HomeScreen(),
        SkeltonHome(),
        NotificationScreen()
      ],
    );
  }
}
