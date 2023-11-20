import 'package:booktickets/presentation/utils/app_layout.dart';
import 'package:booktickets/presentation/utils/app_styles.dart';
import 'package:booktickets/presentation/widgets/column_layout.dart';
import 'package:booktickets/presentation/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/layout_builder_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final Color flightBackgroundColor;
  final Color timeBackgroundColor;
  final Color separatorColor;
  final TextStyle headStyle;
  final TextStyle detailStyle;
  final Color iconColor;
  final Radius bottomRadius;
  TicketView({
    Key? key,
    required this.ticket,
    this.flightBackgroundColor = const Color(0xFF526799),
    Color? timeBackgroundColor,
    this.separatorColor = Colors.white,
    TextStyle? headStyle,
    TextStyle? detailStyle,
    this.iconColor = Colors.white,
    this.bottomRadius = const Radius.circular(21),
  })  : headStyle =
            headStyle ?? Styles.headerStyle3.copyWith(color: Colors.white),
        detailStyle =
            detailStyle ?? Styles.headerStyle4.copyWith(color: Colors.white),
        timeBackgroundColor = timeBackgroundColor ?? Styles.orangeColor,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width * 0.85,
        height: AppLayout.getHeight(163),
        child: Container(
            margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: flightBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(AppLayout.getHeight(21)),
                      ),
                    ),
                    padding: EdgeInsets.all(AppLayout.getHeight(16)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "${ticket['from']['code']}",
                              style: headStyle,
                            ),
                            const Spacer(),
                            ThickContainer(color: iconColor),
                            Expanded(
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: AppLayout.getHeight(24),
                                    child: LayoutBuilderWidget(
                                        sections: 6,
                                        width: 3,
                                        color: separatorColor),
                                  ),
                                  Center(
                                      child: Transform.rotate(
                                    angle: 1.5,
                                    child: Icon(Icons.local_airport_rounded,
                                        color: iconColor),
                                  )),
                                ],
                              ),
                            ),
                            ThickContainer(color: iconColor),
                            const Spacer(),
                            Text("${ticket['to']['code']}", style: headStyle),
                          ],
                        ),
                        const Gap(3),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: AppLayout.getWidth(100),
                                  child: Text("${ticket['from']['name']}",
                                      style: detailStyle)),
                              Text("${ticket['flying_time']}",
                                  style: detailStyle),
                              SizedBox(
                                  width: AppLayout.getWidth(100),
                                  child: Text("${ticket['to']['name']}",
                                      textAlign: TextAlign.end,
                                      style: detailStyle))
                            ]),
                      ],
                    )),
                /* showing the orange part of card */
                Container(
                  color: timeBackgroundColor,
                  child: Row(
                    children: [
                      SizedBox(
                        height: AppLayout.getHeight(20),
                        width: AppLayout.getWidth(10),
                        child: const DecoratedBox(
                            decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: LayoutBuilderWidget(
                            color: separatorColor,
                            sections: 15,
                            width: 6,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                        width: AppLayout.getWidth(10),
                        child: const DecoratedBox(
                            decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: timeBackgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: bottomRadius,
                      bottomRight: bottomRadius,
                    ),
                  ),
                  padding: const EdgeInsets.only(
                      left: 16, top: 10, right: 16, bottom: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ColumnLayout(
                            topText: '${ticket['date']}',
                            topTextStyle: headStyle,
                            bottomText: 'Date',
                            bottomTextStyle: detailStyle,
                            alignment: CrossAxisAlignment.start,
                          ),
                          ColumnLayout(
                              topText: "${ticket['departure_time']}",
                              topTextStyle: headStyle,
                              bottomText: 'Departure Time',
                              bottomTextStyle: detailStyle,
                              alignment: CrossAxisAlignment.center),
                          ColumnLayout(
                            topText: "${ticket['number']}",
                            topTextStyle: headStyle,
                            bottomText: 'Number',
                            bottomTextStyle: detailStyle,
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
