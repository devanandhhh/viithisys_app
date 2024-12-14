import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../widgets/footer_widget.dart';

class PercentageBox extends StatelessWidget {
  const PercentageBox({
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
        Icon(
          isIncrement
              ? Icons.arrow_upward_rounded
              : Icons.arrow_downward_rounded,
          color: isIncrement ? kIncrementColor : kDecrementColor,
          size: 20,
        ),
        interTightStyle(
            text: percentage, //percentage here
            fontsize: 15,
            weightFont: FontWeight.w800,
            colorName: isIncrement ? kIncrementColor : kDecrementColor)
      ],
    );
  }
}
