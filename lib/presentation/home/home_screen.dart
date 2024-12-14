import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/presentation/home/widgets/build_appbar.dart';
import 'package:viithiisys_app/presentation/home/widgets/contact_box.dart';
import 'package:viithiisys_app/widgets/footer_widget.dart';

import 'widgets/my_task_box.dart';
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
              revenueBox(isSkelton: false),
              const Gap(24),
              // Contact session starts here ---------------------- Session one
              contactBox(isSkelton: false),
              const Gap(24),
              // my task session start here
              myTaskBox(isSkelton: false)
            ],
          ),
        ),
      ),
    );
  }
}

CircleAvatar imageAvatar({required String imagepath, required double radius}) {
  return CircleAvatar(
    radius: radius,
    backgroundImage: AssetImage(imagepath),
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
