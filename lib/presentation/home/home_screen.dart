import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viithiisys_app/presentation/home/widgets/add_task_widget.dart';

import '../../core/colors.dart';
import 'widgets/add_comment_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: buildAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: Colors.grey),
            Padding(
              padding:
                  EdgeInsets.only(left: 18.0, right: 18, top: 10, bottom: 10),
              child: Column(
                children: [
                  AddedTaskWidget(
                      text: "Sustainability Awareness", iswhite: false),
                  Gap(10),
                  AddedTaskWidget(text: "Competitive Targeting", iswhite: true),
                ],
              ),
            ),
            Divider(color: Colors.grey),
            Padding(
              padding: EdgeInsets.only(left: 18.0,right: 18,),
              child: Column(
                children: [
                  
                  AddCommentWidget(name: "Kristin Watson", iswhite: true),
                  Gap(10),
                  AddCommentWidget(name: "Eleanor Pena", iswhite: false),
                  AddedTaskWidget(
                      text: "Sustainability Awareness", iswhite: true),
                  Gap(20)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kwhite,
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
        style: GoogleFonts.aBeeZee(fontSize: 22, color: Colors.grey[600]),
      ),
      actions: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: kgrey)),
          child: Transform.rotate(
              angle: pi / 2,
              child: Icon(
                Icons.more_vert,
                color: kgrey,
              )),
        ),
        const Gap(5),
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: kgrey)),
          child: Transform.rotate(
              angle: pi / 4,
              child: Icon(
                Icons.expand,
                color: kgrey,
              )),
        ),
        const Gap(5),
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: kgrey)),
          child: Icon(
            Icons.close,
            color: kgrey,
          ),
        ),
        const Gap(15)
      ],
    );
  }
}
