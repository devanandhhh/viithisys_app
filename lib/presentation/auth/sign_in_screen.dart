import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/presentation/auth/widgets/custom_button.dart';
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
      backgroundColor:const Color(0xFFF8F9FB),
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
                  interTightStyle(
                      text: "Don’t have an account?",
                      fontsize: 19,
                      weightFont: FontWeight.w400, 
                      colorName: kBlack),
                  const Gap(3),
                  interTightStyle(
                      text: "Sign Up",
                      fontsize: 17,
                      weightFont: FontWeight.w300,
                      colorName: kmainColor)
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: footerWidget(context, subtext: "© 2024 Clario",isGrey: true),
    );
  }

  Widget loginDialogBox(BuildContext context) {
    return Container(
      height: 450,
      width: MediaQuery.of(context).size.width * .86,
      decoration: BoxDecoration(
        color: kwhite,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        children: [
          const Gap(15),
          const GradientCircleAvathar(
            height: 61,
            width: 61,
          ),
          interTightStyle(
              text: "Login to your account",
              fontsize: 22,
              colorName: kBlack,
              weightFont: FontWeight.w700),
          const Gap(4),
          subText(
              subtext: "Enter your details to login",
              fontsize: 15,
              kcolor: kgrey),
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
                              border: Border.all(color: hintTextColor),
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        const Gap(5),
                        interTightStyle(
                            text: "Keep me logged in",
                            fontsize: 13,
                            weightFont: FontWeight.w100,
                            colorName: kBlack),
                      ],
                    ),
                    interTightStyle(
                        text: "Forgot Password?",
                        fontsize: 16,
                        weightFont: FontWeight.w400,
                        colorName: kmainColor)
                  ],
                ),
                const Gap(30),
                const CustomButtonWidget(text: "Sign In")
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
