import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/colors.dart';
import '../../home/widgets/custom_bordered_box.dart';

class HomeSkeltonBox extends StatelessWidget {
  const HomeSkeltonBox({
    super.key, required this.imagePath,
  });
final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131,
      width: 327,
      decoration: BoxDecoration(
          border: Border.all(color: kborderColor),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15.0, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBorderedBox(
              height: 37,
              width: 37,
              borderRadius: 8,
              noBorder: true,
              color: kmainColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(imagePath),
              ),
            ),
            const Gap(9),
            CustomBorderedBox(
              height: 21,
              width: 68,
              borderRadius: 6,
              noBorder: true,
              color: kgrey100,
            ),
            const Gap(9),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBorderedBox(
                  height: 24,
                  width: 130,
                  borderRadius: 6,
                  noBorder: true,
                  color: kgrey100,
                ),
                CustomBorderedBox(
                  height: 20,
                  width: 49,
                  borderRadius: 6,
                  noBorder: true,
                  color: kgrey100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
