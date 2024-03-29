import 'package:booktickets/presentation/screens/hotel_screen.dart';
import 'package:booktickets/presentation/screens/ticket_view.dart';
import 'package:booktickets/presentation/utils/app_styles.dart';
import 'package:booktickets/presentation/utils/app_info_list.dart';
import 'package:booktickets/presentation/widgets/headline.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: Styles.headerStyle3,
                          ),
                          const Gap(5),
                          Text(
                            'Book Tickets',
                            style: Styles.headerStyle1,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/img_1.png"))),
                      ),
                    ]),
                const Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.grey,
                      ),
                      Text('Search', style: Styles.headerStyle4)
                    ],
                  ),
                ),
                const Gap(40),
                const BlockHeadline(
                  headerText: 'Upcoming Flights',
                  linkText: 'View all',
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: ticketList.map((e) => TicketView(ticket: e)).toList(),
            ),
          ),
          const Gap(15),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const BlockHeadline(
                headerText: 'Hotels',
                linkText: 'View all',
              )),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: hotelList.map((e) => HotelScreen(hotel: e)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
