import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/widgets/footer_widget.dart';

import 'widgets/sales_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        leading: small3DotContainer(iconName: "assets/icons/menu.png"),
        actions: [
          imageAvatar(imagepath: "assets/images/lady3image.png"),
          imageAvatar(imagepath: "assets/images/menImage1.png"),
          CircleAvatar(
            backgroundColor: kborderColor,
            child: CircleAvatar(
              radius: 17,
              backgroundColor: kwhite,
              child: Icon(
                Icons.add,
                color: hintTextColor,
                size: 19,
              ),
            ),
          ),
          const Gap(7),
          Container(
            height: 32,
            width: 2,
            decoration: BoxDecoration(
                color: kborderColor, borderRadius: BorderRadius.circular(3)),
          ),
          small3DotContainer(iconName: "assets/icons/three-dots.png"),
          const Gap(3),
        ],
      ),
      //===================
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Column(
              //set a widget

              children: [
                sessionOne(
                    width: 327,
                    firstIcon: "assets/icons/callender_icon.png",
                    text: "Last updated: Feb 28, 2024",
                    secondIcon: "assets/icons/retry_icon.png",
                    isWhite: true),
                const Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sessionOne(
                        width: 115,
                        firstIcon: "assets/icons/filter_icon.png",
                        text: "Filter",
                        isWhite: true),
                    const Gap(6),
                    sessionOne(
                        width: 204,
                        firstIcon: "assets/icons/green_download2.png",
                        text: "Import/Export",
                        secondIcon: "assets/icons/green_downarrow2.png",
                        isWhite: false)
                  ],
                ),
              ],
            ),
            const Gap(21),
            const SalesContainer(
              smallIcon: "assets/icons/blue_coin.png",
              text: "Total Sales",
              pricevalue: '\$23,569.00',
              percentage: "10,5%",
              isIncrement: true,
            ),
            const SalesContainer(
              smallIcon: "assets/icons/graph_icon.png",
              text: "Avg. Sale value",
              pricevalue: '\$12,680.00',
              percentage: "3,4%",
              isIncrement: true,
            ),
            const SalesContainer(
              smallIcon: "assets/icons/blue_person.png",
              text: "Total Deals",
              pricevalue: '1,204',
              percentage: "0,5%",
              isIncrement: false,
            ),
            //Revenue container ----------------------------
            Container(
              height: 375,
              width: 327,
              decoration: BoxDecoration(
                  color: kwhite,
                  border: Border.all(
                    color: kborderColor,
                  ),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  //Session One here--------------------
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 21, right: 21, bottom: 0, top: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 56,
                          width: 84,
                          //decoration: BoxDecoration(color: kgrey100),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 30,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/icons/pig_icon.png"))),
                              ),
                              interTightStyle(
                                  text: "Revenue",
                                  fontsize: 14,
                                  weightFont: FontWeight.w400,
                                  colorName: hintTextColor)
                            ],
                          ),
                        ),
                        Container(
                          height: 32,
                          width: 110,
                          decoration: BoxDecoration(
                              color: kwhite,
                              border: Border.all(color: kborderColor),
                              borderRadius: BorderRadius.circular(9)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                            ),
                            child: Row(
                              children: [
                                interTightStyle(
                                    text: "All Products",
                                    fontsize: 12,
                                    weightFont: FontWeight.w500,
                                    colorName: hintTextColor),
                                const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //Session 2 Start here ---------------------------------

                  Container(
                    height: 2,
                    width: 327,
                    color: kborderColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 12, bottom: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            interTightStyle(
                                text: "\$23,569.00",
                                fontsize: 20,
                                weightFont: FontWeight.w600,
                                colorName: kBlack),
                            Row(
                              children: [
                                const percentageBox(
                                    isIncrement: true, percentage: "10,5%"),
                                Gap(6),
                                interTightStyle(
                                    text: "from last period",
                                    fontsize: 14,
                                    weightFont: FontWeight.w400,
                                    colorName: hintTextColor),
                              ],
                            ),
                          ],
                        ),
                        Gap(8),
                        Row(
                          children: [
                            colorBox(
                                height: 8,
                                width: 8,
                                colorName: kmainColor,
                                borderRadius: 2),
                            Gap(6),
                            interTightStyle(
                                text: "This period",
                                fontsize: 13,
                                weightFont: FontWeight.w400,
                                colorName: hintTextColor),
                            Gap(12),
                            colorBox(
                                height: 8,
                                width: 8,
                                colorName: kbluelight,
                                borderRadius: 2),
                            Gap(6),
                            interTightStyle(
                                text: "This period",
                                fontsize: 13,
                                weightFont: FontWeight.w400,
                                colorName: hintTextColor)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container colorBox(
          {required double height,
          required double width,
          required colorName,
          required double borderRadius}) =>
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: colorName,
            borderRadius: BorderRadius.circular(borderRadius)),
      );

  Container sessionOne(
      {required double width,
      required String firstIcon,
      required String text,
      required bool isWhite,
      String? secondIcon}) {
    return Container(
      height: 40,
      width: width, //width here
      decoration: BoxDecoration(
          color: isWhite ? kwhite : kmainColor,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: kborderColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(firstIcon), //first icon here
          ),
          interTightStyle(
              text: text, //text here
              fontsize: 14,
              weightFont: FontWeight.w500,
              colorName: isWhite ? hintTextColor : kwhite),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: secondIcon != null
                ? Image.asset(secondIcon)
                : null, //second icon here
          )
        ],
      ),
    );
  }

  CircleAvatar imageAvatar({required String imagepath}) {
    return CircleAvatar(
      backgroundImage: AssetImage(imagepath),
    );
  }

  Padding small3DotContainer({required String iconName}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 37,
          width: 37,
          decoration: BoxDecoration(
            border: Border.all(color: kborderColor, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              iconName,
              scale: 22,
            ),
          )),
    );
  }
}
