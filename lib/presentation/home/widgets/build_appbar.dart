import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:viithiisys_app/presentation/home/home_screen.dart';

import '../../../core/colors.dart';

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
              imageAvatar(imagepath: "assets/images/menImage1.png", radius: 18),
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
