import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/presentation/screens/ticket_view.dart';
import 'package:booktickets/presentation/utils/app_info_list.dart';
import 'package:booktickets/presentation/utils/app_layout.dart';
import 'package:booktickets/presentation/utils/app_styles.dart';
import 'package:booktickets/presentation/widgets/column_layout.dart';
import 'package:booktickets/presentation/widgets/layout_builder_widget.dart';
import 'package:booktickets/presentation/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getWidth(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headerStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const TicketTabs(leftText: 'Upcoming', rightText: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  flightBackgroundColor: Colors.white,
                  headStyle: Styles.headerStyle3.copyWith(color: Colors.black),
                  detailStyle: Styles.headerStyle4,
                  iconColor: const Color(0xFF8ACCF7),
                  timeBackgroundColor: Colors.white,
                  separatorColor: Colors.grey.shade300,
                  bottomRadius: Radius.zero,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(20),
                ),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          topText: 'Flutter DB',
                          topTextStyle:
                              Styles.headerStyle3.copyWith(color: Colors.black),
                          bottomText: 'Passenger',
                          bottomTextStyle: Styles.headerStyle4,
                          alignment: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          topText: '5221 364869',
                          topTextStyle:
                              Styles.headerStyle3.copyWith(color: Colors.black),
                          bottomText: 'passport',
                          bottomTextStyle: Styles.headerStyle4,
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    LayoutBuilderWidget(
                      color: Colors.grey.shade300,
                      sections: 15,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          topText: '0055 444 77147',
                          topTextStyle:
                              Styles.headerStyle3.copyWith(color: Colors.black),
                          bottomText: 'Number of E-Ticket',
                          bottomTextStyle: Styles.headerStyle4,
                          alignment: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          topText: 'B2SG28',
                          topTextStyle:
                              Styles.headerStyle3.copyWith(color: Colors.black),
                          bottomText: 'Booking code',
                          bottomTextStyle: Styles.headerStyle4,
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    LayoutBuilderWidget(
                        color: Colors.grey.shade300, sections: 15, width: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                  alignment: Alignment.centerLeft,
                                ),
                                Text(
                                  ' *** 2462',
                                  style: Styles.headerStyle3
                                      .copyWith(color: Colors.black),
                                )
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text('Payment method', style: Styles.headerStyle4),
                          ],
                        ),
                        ColumnLayout(
                          topText: '\$249.49',
                          topTextStyle:
                              Styles.headerStyle3.copyWith(color: Colors.black),
                          bottomText: 'Price',
                          bottomTextStyle: Styles.headerStyle4,
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                  ),
                ),
                padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20),
                  bottom: AppLayout.getHeight(20),
                ),
                margin: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                  right: AppLayout.getHeight(15),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      height: AppLayout.getHeight(70),
                      barcode: Barcode.code128(),
                      data: 'https://github.com/2ernestkg',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(20),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getWidth(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(20),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getWidth(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
