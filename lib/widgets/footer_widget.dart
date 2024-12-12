import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';

SizedBox footerWidget(BuildContext context, {required String subtext}) {
  return SizedBox(
    height: 70,
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: [
        subText(subtext: subtext, fontsize: 15),
        const Gap(10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FooterTextBox(
              icon: Icons.lock,
              subtext: "Privacy",
            ),
            Gap(10),
            FooterTextBox(
              icon: Icons.file_present_outlined,
              subtext: "Terms",
            ),
            Gap(10),
            FooterTextBox(
              icon: Icons.question_mark_outlined,
              subtext: "Get help",
            )
          ],
        )
      ],
    ),
  );
}

class FooterTextBox extends StatelessWidget {
  const FooterTextBox({super.key, required this.icon, required this.subtext});
  final IconData icon;
  final String subtext;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
          color: kgrey,
        ),
        subText(subtext: subtext, fontsize: 14)
      ],
    );
  }
}

Text subText({required String subtext, required double fontsize}) {
  return Text(
    subtext,
    style: GoogleFonts.roboto(fontSize: fontsize, color: kgrey),
  );
}

Text styleTextBold({required text, required double fontsize}) => Text(
      text,
      style: GoogleFonts.aBeeZee(
        fontSize: fontsize,
        fontWeight: FontWeight.bold,
      ),
    );
