import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viithiisys_app/presentation/auth/third_screen.dart';

import '../../../core/colors.dart';
import '../../../widgets/footer_widget.dart';

class AddCommentWidget extends StatelessWidget {
  const AddCommentWidget(
      {super.key, required this.name, required this.iswhite});
  final String name;
  final bool iswhite;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          color: iswhite ? kwhite : kgrey100,
          borderRadius: BorderRadius.circular(9)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //circle avathar with picture
            CircleAvatar(
              radius: 25,
              backgroundImage: iswhite
                  ? const AssetImage(
                      "assets/images/secondLadyimage.png",
                    )
                  : const AssetImage("assets/images/ladyImage.png"),
            ),
            const Gap(14),
            // Name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    interTightStyle(
                        text: name,
                        fontsize: 16,
                        weightFont: FontWeight.w500,
                        colorName: kBlack),
                    const Gap(3),
                    interTightStyle(
                        text: "commented on a task",
                        fontsize: 14,
                        weightFont: FontWeight.w400,
                        colorName: hintTextColor),
                    const Gap(26),
                    Transform.rotate(
                        angle: pi / 2,
                        child: Icon(
                          Icons.more_vert,
                          color: kgrey,
                          size: 20,
                        ))
                  ],
                ),
                //const Gap(10),
                // box here
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * .65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1.0, top: 9),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            //purple box
                            Container(
                              height: 34,
                              width: 3,
                              decoration: BoxDecoration(
                                color: kdarkbox,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            const Gap(10),
                            Text(
                              "Competitive Targeting",
                              style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width * .63,
                  child: Text(
                      style: TextStyle(color: kgrey500),
                      "“Ipsum rhoncus nibh malesuada magnis posuere aliquam nunc orci egestas. Ut nunc at aliquet mi auctor elementum. Ultrices dui et pellentesque amet enim”"),
                ),

                //Reply
                customizeSession(text: "Reply", isBlue: false),
                const Gap(10),
                //time
                subText(
                    subtext: "Friday, March 01", fontsize: 14, kcolor: kgrey),
              ],
            )
          ],
        ),
      ),
    );
  }
}
