import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/presentation/home/home_screen.dart';
import 'package:viithiisys_app/presentation/home/widgets/custom_bordered_box.dart';
import 'package:viithiisys_app/presentation/home/widgets/revenue_box.dart';

import '../../../core/colors.dart';
import '../../../widgets/footer_widget.dart';

Column contactBox() {
  return Column(
    children: [
      Container(
        height: 100,
        width: 327,
        decoration: BoxDecoration(
          border: Border.all(color: kborderColor),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person_outline_rounded,
                    color: kgrey500,
                    size: 25,
                  ),
                  const Gap(8),
                  interTightStyle(
                      text: "Contacts",
                      fontsize: 14,
                      weightFont: FontWeight.w500,
                      colorName: hintTextColor),
                ],
              ),
              // const Gap(11) ,
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12.0),
                child: Row(
                  children: [
                    CustomBorderedBox(
                      height: 32,
                      width: 240,
                      borderRadius: 8,
                      noBorder: false,
                      child: Row(
                        children: [
                          CustomBorderedBox(
                            height: 30,
                            width: 30,
                            borderRadius: 10,
                            noBorder: true,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child:
                                  Image.asset("assets/icons/search_grey.png"),
                            ),
                          ),
                          interTightStyle(
                              text: "Search Contacts...",
                              fontsize: 14,
                              weightFont: FontWeight.w400,
                              colorName: hintTextColor)
                        ],
                      ),
                    ), //240,32,8
                    const Gap(8),
                    CustomBorderedBox(
                      height: 32,
                      width: 32,
                      borderRadius: 10,
                      noBorder: false,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset("assets/icons/retry_grey.png"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // Contact session starts here ---------------------- Session two
      Container(
        height: 320,
        width: 327,
        decoration: BoxDecoration(
          border: Border.all(
            color: kborderColor,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        //-----------start continue here
        child: Column(
          children: [
            contactListBox(
                height: 40,
                personWidget: interTightStyle(
                    text: "Person",
                    fontsize: 14,
                    weightFont: FontWeight.w500,
                    colorName: hintTextColor),
                companyWidget: interTightStyle(
                  text: "Company",
                  fontsize: 14,
                  weightFont: FontWeight.w500,
                  colorName: hintTextColor,
                ),
                rightP: 30,
                isContactSmallTile: true),
            customDivider(height: 2, width: 327),
            contactListBox(
                height: 50,
                personWidget: contactTileBox1(
                    imagePath: "assets/images/menImage2.png",
                    personName: "Jenny Wilson"),
                companyWidget: contactTileBox2(
                    imagePath: "assets/logo/facebook_logo.png",
                    companyName: "Facebook"),
                isContactSmallTile: false),
            customDivider(height: 2, width: 327),
            contactListBox(
                height: 50,
                personWidget: contactTileBox1(
                    imagePath: "assets/images/lady3image.png",
                    personName: "Jenny Wilson"),
                companyWidget: contactTileBox2(
                    imagePath: "assets/logo/klarna_logo.png",
                    companyName: "Klarna"),
                rightP: 30,
                isContactSmallTile: false),
            customDivider(height: 2, width: 327),
            contactListBox(
                height: 50,
                personWidget: contactTileBox1(
                    imagePath: "assets/images/menImage1.png",
                    personName: "Jenny Wilson"),
                companyWidget: contactTileBox2(
                    imagePath: "assets/logo/trello_logo.png",
                    companyName: "Trello"),
                rightP: 35,
                isContactSmallTile: false),
            customDivider(height: 2, width: 327),
            contactListBox(
                height: 50,
                personWidget: contactTileBox1(
                    imagePath: "assets/images/ladyimage3.png",
                    personName: "Jenny Wilson"),
                companyWidget: contactTileBox2(
                    imagePath: "assets/logo/xing_logo.png",
                    companyName: "Xling"),
                rightP: 35,
                isContactSmallTile: false),
            customDivider(height: 2, width: 327),
            contactListBox(
                height: 50,
                personWidget: contactTileBox1(
                    imagePath: "assets/images/secondLadyimage.png",
                    personName: "Jenny Wilson"),
                companyWidget: contactTileBox2(
                    imagePath: "assets/logo/sound_cloud.png",
                    companyName: "SoundClo"),
                rightP: 5,
                isContactSmallTile: false),
          ],
        ),
      )
    ],
  );
}

Row contactTileBox2({required String imagePath, required String companyName}) {
  return Row(
    children: [
      imageAvatar(imagepath: imagePath, radius: 18),
      const Gap(4),
      interTightStyle(
          text: companyName,
          fontsize: 14,
          weightFont: FontWeight.w500,
          colorName: kBlack)
    ],
  );
}

Row contactTileBox1({required String imagePath, required String personName}) {
  return Row(
    children: [
      imageAvatar(
        imagepath: imagePath,
        radius: 18,
      ),
      const Gap(12),
      interTightStyle(
          text: personName,
          fontsize: 14,
          weightFont: FontWeight.w500,
          colorName: kBlack),
    ],
  );
}

SizedBox contactListBox({
  required Widget personWidget,
  required Widget companyWidget,
  required double height,
  double? rightP,
  // double? leftP,
  // double? rightP,
  // double? topP,
  // double? bottomP,
  required bool isContactSmallTile,
}) {
  return SizedBox(
    height: height,
    width: 327,
    child: Padding(
      padding: EdgeInsets.only(
          left: 16,
          right: rightP ?? 16,
          top: isContactSmallTile ? 0 : 5,
          bottom: isContactSmallTile ? 0 : 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CustomBorderedBox(
                  height: 20, width: 20, borderRadius: 4, noBorder: false),
              const Gap(8),
              personWidget
              // interTightStyle(
              //     text: "Person",
              //     fontsize: 14,
              //     weightFont: FontWeight.w500,
              //     colorName: hintTextColor),
            ],
          ),
          companyWidget
          // interTightStyle(
          //     text: "Company",
          //     fontsize: 14,
          //     weightFont: FontWeight.w500,
          //     colorName: hintTextColor),
        ],
      ),
    ),
  );
}
