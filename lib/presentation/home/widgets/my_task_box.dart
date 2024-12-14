import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/presentation/home/widgets/custom_bordered_box.dart';
import 'package:viithiisys_app/presentation/home/widgets/mytask_listTile.dart';

import '../../../core/colors.dart';
import '../../../widgets/footer_widget.dart';

Widget myTaskBox({required bool isSkelton}) {
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
             MyTaskListTileBox(
              firstIcon:const CustomBorderedBox(
                  height: 15, width: 15, borderRadius: 10, noBorder: false),
              headingText: "New social media post",
              subtext1: "Marketing",
              subtext2: "Internal",
              firstwidth: 68,
              secondwidth: 68,isSkelton: isSkelton,
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
              secondwidth: 77,isSkelton: isSkelton,
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
              secondwidth: 68,isSkelton: isSkelton,
            )
          ],
        ),
      )
    ],
  );
}
