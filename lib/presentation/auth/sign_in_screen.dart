import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/presentation/auth/widgets/custom_button.dart';
import 'package:viithiisys_app/presentation/home/home_screen.dart';
import 'package:viithiisys_app/widgets/custom_text_field.dart';
import 'package:viithiisys_app/widgets/footer_widget.dart';
import 'package:viithiisys_app/widgets/main_appbar.dart';

import '../../widgets/custom_hint_widget.dart';
import 'widgets/gradient_cirlcle.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppbar(true),
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Gap(60),
              loginDialogBox(context),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an account?",
                    style: TextStyle(fontSize: 17, letterSpacing: 2),
                  ),
                  Text(
                    " Sign Up",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kmainColor),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: footerWidget(context, subtext: "© 2024 Clario"),
    );
  }

  Widget loginDialogBox(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .53,
      width: MediaQuery.of(context).size.width * .86,
      decoration:
          BoxDecoration(color: kwhite, borderRadius: BorderRadius.circular(11)),
      child: Column(
        children: [
          const Gap(15),
          const GradientCircleAvathar(
            height: 50,
            width: 50,
          ),
          styleTextBold(text: "Login to your account", fontsize: 22),
          const Gap(4),
          subText(subtext: "Enter your details to login", fontsize: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(10),
                const CustomHintText(name: "Email"),
                const Gap(10),
                const CustomTextField(text: "johndoe@mail.com"),
                const Gap(10),
                const CustomHintText(name: "Password"),
                const Gap(10),
                customPasswordTextfield(),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        const Gap(5),
                        const Text("Keep me logged in"),
                      ],
                    ),
                    Text(
                      "Forgot Passoword?",
                      style: TextStyle(
                          color: kmainColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Gap(30),
                InkWell(onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (ctx)=>const HomeScreen())), child: const CustomButtonWidget(text: "Sign In"))
              ],
            ),
          )
        ],
      ),
    );
  }

  TextFormField customPasswordTextfield() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: '• • • • • •',
          labelStyle: const TextStyle(fontSize: 30),
          suffixIcon: const Icon(Icons.remove_red_eye)),
    );
  }
}
