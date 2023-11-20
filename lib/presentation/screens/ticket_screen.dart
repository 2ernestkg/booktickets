import 'package:booktickets/presentation/screens/ticket_view.dart';
import 'package:booktickets/presentation/utils/app_info_list.dart';
import 'package:booktickets/presentation/utils/app_layout.dart';
import 'package:booktickets/presentation/utils/app_styles.dart';
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
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
