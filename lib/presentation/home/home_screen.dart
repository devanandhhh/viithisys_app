import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/presentation/home/widgets/contact_box.dart';
import 'package:viithiisys_app/presentation/home/widgets/custom_bordered_box.dart';
import 'package:viithiisys_app/widgets/footer_widget.dart';

import 'widgets/mytask_listTile.dart';
import 'widgets/revenue_box.dart';
import 'widgets/sales_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildAppBar(context),
              customDivider(height: 2, width: 327),
              Column(
                children: [
                  const Gap(24),
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
                  const Gap(21),
                ],
              ),

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
              revenueBox(),
              const Gap(24),
              // Contact session starts here ---------------------- Session one
              contactBox(),
              const Gap(24),
              // my task session start here
              myTaskBox()
            ],
          ),
        ),
      ),
    );
  }

  Widget myTaskBox() {
    return Column(
      children: [
        Container(
          height: 64,
          width: 327,
          decoration: BoxDecoration(
              border: Border.all(color: kborderColor),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomBorderedBox(
                      height: 26,
                      width: 26,
                      borderRadius: 5,
                      noBorder: false,
                      child: Icon(
                        Icons.check,
                        color: kgrey500,
                      ),
                    ),
                    const Gap(8),
                    interTightStyle(
                        text: "My Tasks",
                        fontsize: 16,
                        weightFont: FontWeight.w500,
                        colorName: hintTextColor),
                  ],
                ),
                CustomBorderedBox(
                  height: 26,
                  width: 26,
                  borderRadius: 5,
                  noBorder: false,
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: kgrey500,
                  ),
                )
              ],
            ),
          ),
        ),
        //second session start here -----------------------------
        Container(
          height: 365,
          width: 327,
          decoration: BoxDecoration(
              border: Border.all(color: kborderColor),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
          child: Column(
            children: [
              const Gap(12),
              const MyTaskListTileBox(
                firstIcon: CustomBorderedBox(
                    height: 15, width: 15, borderRadius: 10, noBorder: false),
                headingText: "New social media post",
                subtext1: "Marketing",
                subtext2: "Internal",
                firstwidth: 68,
                secondwidth: 68,
              ),
              const Gap(12),
              MyTaskListTileBox(
                firstIcon: CustomBorderedBox(
                  height: 15,
                  width: 15,
                  borderRadius: 10,
                  noBorder: true,
                  color: kmainColor,
                  child: Icon(
                    Icons.check,
                    size: 8,
                    color: kwhite,
                  ),
                ),
                headingText: "Upload new item to marketplace",
                subtext1: "Photo",
                subtext2: "eCommerce",
                firstwidth: 58,
                secondwidth: 77,
              ),
              const Gap(12),
              MyTaskListTileBox(
                firstIcon: CustomBorderedBox(
                  height: 15,
                  width: 15,
                  borderRadius: 10,
                  noBorder: true,
                  color: kmainColor,
                  child: Icon(
                    Icons.check,
                    size: 8,
                    color: kwhite,
                  ),
                ),
                headingText: "Upload new item to marketplace",
                subtext1: "Marketing",
                subtext2: "Internal",
                firstwidth: 68,
                secondwidth: 68,
              )
            ],
          ),
        )
      ],
    );
  }

  Padding buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 4),
      child: SizedBox(
        height: 64,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            small3DotContainer(iconName: "assets/icons/menu.png"),
            Row(
              children: [
                imageAvatar(
                    imagepath: "assets/images/lady3image.png", radius: 18),
                imageAvatar(
                    imagepath: "assets/images/menImage1.png", radius: 18),
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
                      color: kborderColor,
                      borderRadius: BorderRadius.circular(3)),
                ),
                small3DotContainer(iconName: "assets/icons/three-dots.png"),
                const Gap(3),
              ],
            ),
          ],
        ),
      ),
    );
  }

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

CircleAvatar imageAvatar({required String imagepath, required double radius}) {
  return CircleAvatar(
    radius: radius,
    backgroundImage: AssetImage(imagepath),
  );
}
