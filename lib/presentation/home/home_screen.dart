import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Icon(
            Icons.notifications_active_outlined,
            color: kgrey,
            size: 25,
          ),
        ),
        title: Text(
          "Notifications",
          style: GoogleFonts.aBeeZee(fontSize: 22, color: kbluegrey),
        ),
        actions: [
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: kgrey)),
          )
        ],
      ),
      body: const Column(
        children: [
          Divider(
            color: Colors.grey, // Color of the divider
            thickness: 1, // Thickness of the divider
            height:
                1, // Height affects spacing, so set it equal to `thickness` to avoid extra spacing
          ),
        ],
      ),
    );
  }
}
