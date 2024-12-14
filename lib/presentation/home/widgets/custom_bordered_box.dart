import 'package:flutter/widgets.dart';

import '../../../core/colors.dart';

class CustomBorderedBox extends StatelessWidget {
  const CustomBorderedBox(
      {super.key,
      required this.height,
      required this.width,
      required this.borderRadius,
      required this.noBorder,
      this.color ,
      this.child});
  final Widget? child;
  final double height;
  final double width;
  final double borderRadius;
  final bool noBorder;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: noBorder?color??kwhite:kwhite,
            border: noBorder
                ? null
                : Border.all(
                    color: kborderColor,
                  ),
            borderRadius: BorderRadius.circular(borderRadius)),
        child: child);
  }
}
