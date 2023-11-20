import 'package:booktickets/presentation/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ColumnLayout extends StatelessWidget {
  final String topText;
  final TextStyle topTextStyle;
  final String bottomText;
  final TextStyle bottomTextStyle;
  final CrossAxisAlignment alignment;
  const ColumnLayout(
      {super.key,
      required this.topText,
      required this.topTextStyle,
      required this.bottomText,
      required this.bottomTextStyle,
      required this.alignment});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(topText, style: topTextStyle),
        Gap(AppLayout.getHeight(5)),
        Text(bottomText, style: bottomTextStyle),
      ],
    );
  }
}
