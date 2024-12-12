import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/presentation/auth/widgets/custom_button.dart';
import 'package:viithiisys_app/widgets/custom_hint_widget.dart';
import 'package:viithiisys_app/widgets/custom_text_field.dart';
import 'package:viithiisys_app/widgets/footer_widget.dart';
import 'package:viithiisys_app/widgets/main_appbar.dart';

import 'widgets/upload_session.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      //=== App bar
      appBar: mainAppbar(),
      //==Body
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              numberPartSession('1/3'),
              interTightStyle(
                  text: "Let's get you know",
                  fontsize: 25,
                  weightFont: FontWeight.w700,
                  colorName: kBlack),
              const UploadSession(),
              const CustomHintText(name: 'First name'),
              const Gap(14),
              const CustomTextField(text: 'John'),
              const Gap(14),
              const CustomHintText(name: 'Last name'),
              const Gap(14),
              const CustomTextField(text: 'Doe'),
              const Gap(14),
              const CustomHintText(name: 'Email'),
              const Gap(14),
              const CustomTextField(text: 'johndeo@mail.com'),
              const Gap(20),
              interTightStyle(
                  text: 'Subscribe to product update',
                  fontsize: 16,
                  weightFont: FontWeight.w700,
                  colorName: kBlack),
              const Gap(4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * .8,
                    child: subText(
                        subtext:
                            "Get the latest updates about features and products updates.",
                        fontsize: 15,
                        kcolor: hintTextColor),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/icons/off-button.png",
                        scale: 14,
                      ),
                      const Gap(20)
                    ],
                  ),
                ],
              ),
              const CustomButtonWidget(text: "Continue"),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          footerWidget(context, subtext: "© 2024 Clario", isGrey: false),
    );
  }
}

Text numberPartSession(String number) {
  return Text(
    number,
    style: GoogleFonts.roboto(fontSize: 16, color: hintTextColor),
  );
}
