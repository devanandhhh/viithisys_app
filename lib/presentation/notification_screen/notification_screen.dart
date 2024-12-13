import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viithiisys_app/presentation/notification_screen/widgets/add_task_widget.dart';

import '../../core/colors.dart';
import 'widgets/add_comment_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
              padding: EdgeInsets.only(
                left: 18.0,
                right: 18,
              ),
              child: Column(
                children: [
                  AddCommentWidget(name: "Kristin Watson", iswhite: true),
                  Gap(10),
                  AddCommentWidget(name: "Eleanor Pena", iswhite: false),
                  AddedTaskWidget(
                      text: "Sustainability Awareness", iswhite: true),
                  Gap(70)
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
        child: Container(
          height: 20,
          width: 30,
          decoration:const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/icons/notification_icon.png",),)),
        ),
        
      ),
      title: Text(
        "Notifications",
        style: GoogleFonts.interTight(fontSize: 22, color:hintTextColor),
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
              image: const DecorationImage(
                  image: AssetImage("assets/icons/expand_icon.png")),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: kgrey)),
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
