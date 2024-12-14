import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/core/colors.dart';
import 'package:viithiisys_app/presentation/home/widgets/custom_bordered_box.dart';
import 'package:viithiisys_app/presentation/home/widgets/graph_widget.dart';
import 'package:viithiisys_app/presentation/home/widgets/percentage_box.dart';

import '../../../widgets/footer_widget.dart';

Container revenueBox({required bool isSkelton}) {
  return Container(
    height: 379,
    width: 327,
    decoration: BoxDecoration(
      color: kwhite,
      border: Border.all(
        color: kborderColor,
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      children: [
        //Session One here-------------------- Revenue
        Padding(
          padding:
              const EdgeInsets.only(left: 21, right: 21, bottom: 0, top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 56,
                width: 84,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 30,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/pig_icon.png"))),
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
        //Session 2 Start here --------------------------------- Revenue

        customDivider(width: 327, height: 2),
        Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isSkelton
                      ? CustomBorderedBox(
                          height: 31,
                          width: 151,
                          borderRadius: 6,
                          noBorder: true,
                          color: kgrey100,
                        )
                      : interTightStyle(
                          text: "\$23,569.00",
                          fontsize: 20,
                          weightFont: FontWeight.w600,
                          colorName: kBlack),
                  isSkelton
                      ? CustomBorderedBox(
                          height: 31,
                          width: 51,
                          borderRadius: 6,
                          noBorder: true,
                          color: kgrey100,
                        )
                      : Row(
                          children: [
                            const PercentageBox(
                                isIncrement: true, percentage: "10,5%"),
                            const Gap(6),
                            interTightStyle(
                                text: "from last period",
                                fontsize: 14,
                                weightFont: FontWeight.w400,
                                colorName: hintTextColor),
                          ],
                        ),
                ],
              ),
              const Gap(8),
              Row(
                children: [
                  colorBox(
                      height: 8,
                      width: 8,
                      colorName: kmainColor,
                      borderRadius: 2),
                  const Gap(6),
                  isSkelton
                      ? CustomBorderedBox(
                          height: 21,
                          width: 68,
                          borderRadius: 6,
                          noBorder: true,
                          color: kgrey100,
                        )
                      : interTightStyle(
                          text: "This period",
                          fontsize: 13,
                          weightFont: FontWeight.w400,
                          colorName: hintTextColor),
                  const Gap(12),
                  colorBox(
                      height: 8,
                      width: 8,
                      colorName: kbluelight,
                      borderRadius: 2),
                  const Gap(6),
                  isSkelton
                      ? CustomBorderedBox(
                          height: 21,
                          width: 68,
                          borderRadius: 6,
                          noBorder: true,
                          color: kgrey100,
                        )
                      : interTightStyle(
                          text: "This period",
                          fontsize: 13,
                          weightFont: FontWeight.w400,
                          colorName: hintTextColor)
                ],
              ),
              const Gap(8),
               KGraph(isSkelton:isSkelton)
            ],
          ),
        ),
      ],
    ),
  );
}

Container colorBox(
        {required double height,
        required double width,
        required colorName,
        required double borderRadius,}) =>
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: colorName, borderRadius: BorderRadius.circular(borderRadius)),
    );

Container customDivider({
  required double height,
  required double width,
}) {
  return Container(
    height: height,
    width: width,
    color: kborderColor,
  );
}
