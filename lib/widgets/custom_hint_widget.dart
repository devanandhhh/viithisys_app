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
      style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600, 
          color: hintTextColor ,
          letterSpacing: 0),
    );
  }
}
