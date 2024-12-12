 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viithiisys_app/core/colors.dart';

AppBar mainAppbar([bool? isNotwhite=false]) {
    return AppBar(
      backgroundColor:isNotwhite!=true? kwhite: Colors.blueGrey[50],
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/icons/main_icon.png"))),
        ),
      ),
      title: Text(
        'Clario',
        style: GoogleFonts.aBeeZee(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }