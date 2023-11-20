import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({
    super.key,
    required this.color,
    required this.sections,
    required this.width,
  });

  final Color color;
  final double sections;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
                (constraints.constrainWidth() / sections).floor(),
                (index) => SizedBox(
                      width: width,
                      height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: color),
                      ),
                    )));
      },
    );
  }
}
