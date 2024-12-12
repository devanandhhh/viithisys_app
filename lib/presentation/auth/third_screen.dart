import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/presentation/auth/first_screen.dart';
import 'package:viithiisys_app/widgets/footer_widget.dart';
import 'package:viithiisys_app/widgets/main_appbar.dart';
import 'package:viithiisys_app/presentation/auth/widgets/custom_button.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppbar(),
      backgroundColor: kwhite,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            numberPartSession("3/3"),
            styleTextBold(text: "Customize your workspace", fontsize: 30),
            const Gap(20),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: subText(
                  subtext:
                      "You can easily create workflows for virtually any use case. We’ve got dozens of templates to get you started, or you can start with a blank canvas",
                  fontsize: 17),
            ),
            const Gap(20),
            styleTextBold(
                text: "What will you be using Clario for?", fontsize: 20),
            const Gap(15),
            Row(
              children: [
                customizeSession(text: "Sales", isBlue: true),
                const Gap(7),
                customizeSession(text: "Recruiting", isBlue: false),
                const Gap(7),
                customizeSession(text: "Marketing", isBlue: true),
                const Gap(7),
                customizeSession(text: "Investing", isBlue: false)
              ],
            ),
            const Gap(10),
            Row(
              children: [
                customizeSession(text: "Customer Success", isBlue: false),
                const Gap(10),
                customizeSession(text: "Human Resources", isBlue: true),
              ],
            ),
            const Gap(10),
            customizeSession(text: "Fundraising", isBlue: false),
            const Gap(15),
            styleTextBold(
                text: "What are you working on at the moment?", fontsize: 20),
            const Gap(10),
            Row(
              children: [
                customizeSession(
                    text: "Tracking Leads", isBlue: true, kwidth: 110),
                const Gap(7),
                customizeSession(
                    text: "Hiring New People", isBlue: true, kwidth: 150),
                const Gap(7),
                customizeSession(text: "Others", isBlue: false),
              ],
            ),
            const Gap(30),
            const CustomButtonWidget(text: "Continue")
          ],
        ),
      ),
      bottomNavigationBar: footerWidget(context, subtext: "© 2024 Clario"),
    );
  }

  
}
Container customizeSession(
      {required String text, required bool isBlue, double? kwidth}) {
    return Container(
      height: 40,
      width: kwidth ?? text.length * 9.99,
      decoration: BoxDecoration(
          color: isBlue == true ? Colors.lightBlue[50] : kwhite,
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: isBlue == true ? Colors.blue : kgrey)),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.aBeeZee(
              color: isBlue == true ? Colors.lightBlue : kgrey500,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

