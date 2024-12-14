import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/presentation/home/widgets/custom_bordered_box.dart';

import '../../../core/colors.dart';
import '../../../widgets/footer_widget.dart';

class MyTaskListTileBox extends StatelessWidget {
  const MyTaskListTileBox({
    super.key,
    required this.firstIcon,
    required this.headingText,
    required this.subtext1,
    required this.subtext2,
    required this.firstwidth,
    required this.secondwidth,
    required this.isSkelton,
  });
  final Widget firstIcon;
  final String headingText;
  final String subtext1;
  final String subtext2;
  final double firstwidth;
  final double secondwidth;
  final bool isSkelton;

  @override
  Widget build(BuildContext context) {
    return CustomBorderedBox(
      height: 103,
      width: 295,
      borderRadius: 12,
      noBorder: false,
      child: Padding(
        padding: const EdgeInsets.only(top: 18, right: 0, left: 18.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //first icon-----------------------------------
                firstIcon,
                const Gap(9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //heading text-----------------------------------
                    isSkelton
                        ? CustomBorderedBox(
                            height: 21,
                            width: 107,
                            borderRadius: 6,
                            noBorder: true,
                            color: kgrey100,
                          )
                        : interTightStyle(
                            text: headingText,
                            fontsize: 16,
                            weightFont: FontWeight.w500,
                            colorName: kBlack),
                    const Gap(3),
                    isSkelton
                        ? CustomBorderedBox(
                            height: 21,
                            width: 231,
                            borderRadius: 6,
                            noBorder: true,
                            color: kgrey100,
                          )
                        : interTightStyle(
                            text: "Sed mi ac ac sagittis mi. Interdum va...",
                            fontsize: 15,
                            weightFont: FontWeight.w400,
                            colorName: hintTextColor),
                    const Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CustomBorderedBox(
                              height: 24,
                              width: 24,
                              borderRadius: 5,
                              noBorder: true,
                              child: Image.asset("assets/icons/callender7.png"),
                            ),
                            isSkelton
                                ? CustomBorderedBox(
                                    height: 21,
                                    width: 37,
                                    borderRadius: 6,
                                    noBorder: true,
                                    color: kgrey100,
                                  )
                                : interTightStyle(
                                    text: "Feb 12",
                                    fontsize: 16,
                                    weightFont: FontWeight.w400,
                                    colorName: hintTextColor),
                          ],
                        ),
                        const Gap(30),
                        Row(
                          children: [
                            CustomBorderedBox(
                              height: 21,
                              width: firstwidth, //first width
                              borderRadius: 5,
                              noBorder: true,
                              color: lightMarketing,
                              child: isSkelton
                                  ? null
                                  : Center(child: Text(subtext1)), //subtext1
                            ),
                            const Gap(5),
                            CustomBorderedBox(
                              height: 21,
                              width: secondwidth, //second width
                              borderRadius: 5,
                              noBorder: true,
                              color: lightInternal,
                              child: isSkelton
                                  ? null
                                  : Center(child: Text(subtext2)), //subtext2
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
