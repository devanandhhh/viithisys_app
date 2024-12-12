import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/presentation/auth/second_screen.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            numberPartSession('1/3'),
            styleTextBold(text: "Let's get you know", fontsize: 30),
            const UploadSession(),
            const CustomHintText(name: 'First name'),
            const Gap(10),
            const CustomTextField(text: 'John'),
            const Gap(10),
            const CustomHintText(name: 'Last name'),
            const Gap(10),
            const CustomTextField(text: 'Doe'),
            const Gap(10),
            const CustomHintText(name: 'Email'),
            const Gap(10),
            const CustomTextField(text: 'johndeo@mail.com'),
            const Gap(30),
            styleTextBold(text: 'Subscribe to product update', fontsize: 20),
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
                      fontsize: 15),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.toggle_off,
                      color: kgrey,
                      size: 38,
                    ),
                    const Gap(20)
                  ],
                ),
              ],
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondScreen())),
              child:const CustomButtonWidget(text: "Continue"),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: footerWidget(context, subtext: "© 2024 Clario"),
    );
  }
}


Text numberPartSession(String number) {
  return Text(
    number,
    style: GoogleFonts.roboto(fontSize: 20, color: kgrey),
  );
}