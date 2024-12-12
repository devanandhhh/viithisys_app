import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class GradientCircleAvathar extends StatelessWidget {
  const GradientCircleAvathar(
      {super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container( 
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: kgrey),
        shape: BoxShape.circle,
        gradient:  LinearGradient(
          colors: [hintTextColor,kwhite,kwhite],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Container(
          width: 33,
          height: 33, 
          decoration: BoxDecoration(
            color: kwhite,
            shape: BoxShape.circle,
            border: Border.all(
              color: kgrey,
            ),
          ),
          child: Icon(
            Icons.person_outline_rounded,
            color: kgrey, 
            size: 19, 
          ),
        ),
      ),
    );
  }
}
