import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .064,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        color: kmainColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.aBeeZee(
              fontSize: 19, color: kwhite, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
