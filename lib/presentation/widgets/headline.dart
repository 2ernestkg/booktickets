import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class BlockHeadline extends StatelessWidget {
  final String headerText;
  final String linkText;
  const BlockHeadline(
      {super.key, required this.headerText, required this.linkText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(headerText, style: Styles.headerStyle2),
        InkWell(
          onTap: () {
            //write something
          },
          child: Text(linkText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
        ),
      ],
    );
  }
}
