import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';

SizedBox footerWidget(BuildContext context,
    {required String subtext, required bool isGrey}) {
  return SizedBox(
    height: 70,
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: [
        subText(subtext: subtext, fontsize: 15, kcolor: hintTextColor),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FooterTextBox(
              icon: Icons.lock,
              subtext: "Privacy",
              iconPath: isGrey
                  ? "assets/icons/grey_lock.png"
                  : "assets/icons/lock_icon.png",
            ),
            const Gap(9),
            FooterTextBox(
              icon: Icons.file_present_outlined,
              subtext: "Terms",
              iconPath: isGrey
                  ? "assets/icons/grey_file.png"
                  : "assets/icons/file_icon.png",
            ),
            const Gap(9),
            FooterTextBox(
              icon: Icons.question_mark_outlined,
              subtext: "Get help",
              iconPath: isGrey
                  ? "assets/icons/grey_question.png"
                  : "assets/icons/question_mark.png",
            )
          ],
        ),
      ],
    ),
  );
}

class FooterTextBox extends StatelessWidget {
  const FooterTextBox(
      {super.key,
      required this.icon,
      required this.subtext,
      required this.iconPath});
  final IconData icon;
  final String subtext;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(
        //   icon,
        //   size: 15,
        //   color: kgrey,
        // ),
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(iconPath))),
        ),
        subText(subtext: subtext, fontsize: 14, kcolor: hintTextColor)
      ],
    );
  }
}

Text subText(
    {required String subtext,
    required double fontsize,
    required Color kcolor}) {
  return Text(
    subtext,
    style: GoogleFonts.interTight(fontSize: fontsize, color: kcolor),
  );
}

Text styleTextBold({required text, required double fontsize}) => Text(
      text,
      style: GoogleFonts.aBeeZee(
        fontSize: fontsize,
        fontWeight: FontWeight.bold,
      ),
    );
Text interTightStyle(
        {required text,
        required double fontsize,
        required FontWeight weightFont,
        required Color? colorName}) =>
    Text(
      text,
      style: GoogleFonts.interTight(
          fontSize: fontsize, fontWeight:weightFont, color: colorName),
    );
