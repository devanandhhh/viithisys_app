import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viithiisys_app/core/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,required this.text
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)),
          hintText: text,
          hintStyle: GoogleFonts.aBeeZee(color:kgrey500, fontSize: 18)),
    );
  }
} 