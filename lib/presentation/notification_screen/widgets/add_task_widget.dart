import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';
import '../../../widgets/footer_widget.dart';

class AddedTaskWidget extends StatelessWidget {
  const AddedTaskWidget({
    super.key,
    required this.text,
    required this.iswhite,
  });
  final String text;
  final bool iswhite;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
          color: iswhite != true ? kgrey100 : kwhite,
          borderRadius: BorderRadius.circular(9)),
      child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 20,),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Circle Avatar --------
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                "assets/images/ladyImage.png",
              ),
            ),
            const Gap(14),
            //===========
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Eleanor Pena",
                      style: GoogleFonts.interTight(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,color: kBlack,
                      ),
                    ),
                    const Gap(3),
                    Text(
                      "added you to a task",
                      style: GoogleFonts.interTight(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: hintTextColor),
                    ),
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
                //==================
                const Gap(10),
                // A small box
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * .65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color:kborderColor),
                      color: kwhite),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        //purple box
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: klightbox,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child:  Padding(
                            padding:const EdgeInsets.only(bottom: 2, top: 2),
                            child: Icon(
                              Icons.check_box_outlined,
                              size: 15,
                              color: kdarkbox
                            ),
                          ),
                        ),
                       const  Gap(10),
                        Text(
                          text,
                          style:
                              GoogleFonts.interTight(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(10),

                //time
                subText(subtext: "3 hours ago", fontsize: 16,kcolor: kgrey)
              ],
            )
          ],
        ),
      ),
    );
  }
}
