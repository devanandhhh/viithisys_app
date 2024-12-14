import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viithiisys_app/core/colors.dart';

class CustomHintText extends StatelessWidget {
  const CustomHintText({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.interTight(
          fontSize: 15,
          fontWeight: FontWeight.w500, 
          color: hintTextColor ,
          letterSpacing: 0),
    );
  }
}
