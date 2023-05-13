import 'package:booktickets/presentation/utils/app_layout.dart';
import 'package:booktickets/presentation/utils/app_styles.dart';
import 'package:booktickets/presentation/widgets/thick_container.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width,
        height: 200,
        child: Container(
            margin: const EdgeInsets.only(left: 16),
            child: Column(
              children: [
                Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF526799),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "NYC",
                              style: Styles.headerStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            const Spacer(),
                            const ThickContainer(),
                            Expanded(
                              child: Stack(
                                children: [
                                  SizedBox(
                                    child: LayoutBuilder(
                                      builder: (BuildContext context, BoxConstraints constraints) {
                                        return Flex(
                                          direction: Axis.horizontal,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate((constraints.constrainWidth()/6).floor(), (index) => Text("-")),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const ThickContainer(),
                            const Spacer(),
                            Text("London",
                                style: Styles.headerStyle3
                                    .copyWith(color: Colors.white)),
                          ],
                        )
                      ],
                    ))
              ],
            )));
  }
}
