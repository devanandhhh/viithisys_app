import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHintText extends StatelessWidget {
  const CustomHintText({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.abel(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey[500],
          letterSpacing: 1),
    );
  }
}
