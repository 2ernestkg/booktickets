import 'package:booktickets/presentation/utils/app_layout.dart';
import 'package:booktickets/presentation/utils/app_styles.dart';
import 'package:booktickets/presentation/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final Color flightBackgroundColor;
  final Color timeBackgroundColor;
  final Color separatorColor;
  final TextStyle headStyle;
  final TextStyle detailStyle;
  final Color iconColor;
  TicketView({
    Key? key,
    required this.ticket,
    this.flightBackgroundColor = const Color(0xFF526799),
    Color? timeBackgroundColor,
    this.separatorColor = Colors.white,
    TextStyle? headStyle,
    TextStyle? detailStyle,
    this.iconColor = Colors.white,
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
        height: AppLayout.getHeight(200),
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
                                    child: LayoutBuilder(
                                      builder: (BuildContext context,
                                          BoxConstraints constraints) {
                                        return Flex(
                                            direction: Axis.horizontal,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                (constraints.constrainWidth() /
                                                        6)
                                                    .floor(),
                                                (index) => SizedBox(
                                                      width: 3,
                                                      height: 1,
                                                      child: DecoratedBox(
                                                        decoration:
                                                            BoxDecoration(
                                                                color:
                                                                    iconColor),
                                                      ),
                                                    )));
                                      },
                                    ),
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
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 15).floor(),
                                    (index) => SizedBox(
                                          width: 5,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: separatorColor,
                                            ),
                                          ),
                                        )),
                              );
                            },
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
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21),
                    ),
                  ),
                  padding: const EdgeInsets.only(
                      left: 16, top: 10, right: 16, bottom: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${ticket['date']}", style: headStyle),
                              const Gap(5),
                              Text('Date', style: detailStyle),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("${ticket['departure_time']}",
                                  style: headStyle),
                              const Gap(5),
                              Text('Departure Time', style: detailStyle),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("${ticket['number']}", style: headStyle),
                              const Gap(5),
                              Text('Number', style: detailStyle),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
