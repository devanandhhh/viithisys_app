import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/colors.dart';
import '../../../widgets/footer_widget.dart';

class SalesContainer extends StatelessWidget {
  const SalesContainer({
    super.key, required this.smallIcon, required this.text, required this.pricevalue, required this.percentage, required this.isIncrement,
  });
  final String smallIcon;
  final String text;
  final String pricevalue;
  final String percentage;
  final bool isIncrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 135, //174
          width: 327,
          decoration: BoxDecoration(
              color: kwhite,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              border: Border.all(color: kborderColor)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  right: 14,
                  top: 14,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: kwhite,
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(color: kborderColor),
                        image:  DecorationImage(
                          image: AssetImage(smallIcon),//small icon here
                        ),
                      ),
                    ),
                    const Gap(14),
                    interTightStyle(
                        text: text,//text here
                        fontsize: 14,
                        weightFont: FontWeight.w300,
                        colorName: hintTextColor),
                    //Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        interTightStyle(
                            text: pricevalue,//price value here
                            fontsize: 19,
                            weightFont: FontWeight.w700,
                            colorName: kBlack),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: kwhite,
                              borderRadius: BorderRadius.circular(9),
                              //border: Border.all(color: kborderColor),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/round_arrow1.png"))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        //const Divider(),
        Container(
          height: 39,
          width: 327,
          decoration: BoxDecoration(
              color: kGreyLight,
              border: Border.all(color: kborderColor),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: percentageBox(isIncrement: isIncrement, percentage: percentage),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: interTightStyle(
                    text: "from last period",
                    fontsize: 14,
                    weightFont: FontWeight.w400,
                    colorName: hintTextColor),
              )
            ],
          ),
        ),Gap(24)
      ],
    );
  }
}

class percentageBox extends StatelessWidget {
  const percentageBox({
    super.key,
    required this.isIncrement,
    required this.percentage,
  });

  final bool isIncrement;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(isIncrement?
          Icons.arrow_upward_rounded:Icons.arrow_downward_rounded,
          color:isIncrement? kIncrementColor:kDecrementColor,
          size: 20,
        ),
        interTightStyle(
            text: percentage,//percentage here
            fontsize: 15,
            weightFont: FontWeight.w800,
            colorName: isIncrement? kIncrementColor:kDecrementColor)
      ],
    );
  }
}
