import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/presentation/home/widgets/build_appbar.dart';
import 'package:viithiisys_app/presentation/home/widgets/contact_box.dart';
import 'package:viithiisys_app/presentation/home/widgets/my_task_box.dart';

import '../home/home_screen.dart';
import '../home/widgets/revenue_box.dart';
import 'widgets/home_skelton_box.dart';

class SkeltonHome extends StatelessWidget {
  const SkeltonHome({super.key});

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
                          firstIcon: "assets/icons/grey_download1.png",
                          text: "Import/Export",
                          secondIcon: "assets/icons/grey_downarrow.png",
                          isWhite: true)
                    ],
                  ),
                  const Gap(21),
                  const HomeSkeltonBox(
                      imagePath: "assets/icons/green_coin.png"),
                  const Gap(16),
                  const HomeSkeltonBox(imagePath: "assets/icons/green_pig.png"),
                  const Gap(16),
                  const HomeSkeltonBox(
                      imagePath: "assets/icons/green_person.png"),
                  const Gap(16),
                  const HomeSkeltonBox(
                    imagePath: "assets/icons/green_msg.png",
                  ),
                  const Gap(16),
                  revenueBox(isSkelton: true),
                  const Gap(16),
                  myTaskBox(isSkelton: true),
                  const Gap(16),
                  contactBox(isSkelton: true),
                  const Gap(36)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
