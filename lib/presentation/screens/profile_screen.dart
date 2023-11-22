import 'package:booktickets/presentation/utils/app_layout.dart';
import 'package:booktickets/presentation/utils/app_styles.dart';
import 'package:booktickets/presentation/widgets/column_layout.dart';
import 'package:booktickets/presentation/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getWidth(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getWidth(86),
                height: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img_1.png'),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headerStyle1,
                  ),
                  Text(
                    'New-York',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(3),
                      vertical: AppLayout.getHeight(3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('Edit tapped');
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  color: Styles.primaryColor,
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(25),
                  vertical: AppLayout.getWidth(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        size: 27,
                        color: Styles.primaryColor,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style: Styles.headerStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: Styles.headerStyle2.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated miles',
            style: Styles.headerStyle2,
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(18),
              ),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headerStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "23 May 2022",
                      style: Styles.headerStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      topText: '23042',
                      topTextStyle:
                          Styles.headerStyle3.copyWith(color: Colors.black),
                      bottomText: 'Miles',
                      bottomTextStyle: Styles.headerStyle4,
                      alignment: CrossAxisAlignment.start,
                    ),
                    ColumnLayout(
                      topText: 'Airline CO',
                      topTextStyle:
                          Styles.headerStyle3.copyWith(color: Colors.black),
                      bottomText: 'Recieved From',
                      bottomTextStyle: Styles.headerStyle4,
                      alignment: CrossAxisAlignment.start,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                LayoutBuilderWidget(
                  color: Colors.grey.shade300,
                  sections: 12,
                  width: 5,
                ),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      topText: '24',
                      topTextStyle:
                          Styles.headerStyle3.copyWith(color: Colors.black),
                      bottomText: 'Miles',
                      bottomTextStyle: Styles.headerStyle4,
                      alignment: CrossAxisAlignment.start,
                    ),
                    ColumnLayout(
                      topText: 'McDonal\'s',
                      topTextStyle:
                          Styles.headerStyle3.copyWith(color: Colors.black),
                      bottomText: 'Recieved From',
                      bottomTextStyle: Styles.headerStyle4,
                      alignment: CrossAxisAlignment.start,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                LayoutBuilderWidget(
                  color: Colors.grey.shade300,
                  sections: 12,
                  width: 5,
                ),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      topText: '52340',
                      topTextStyle:
                          Styles.headerStyle3.copyWith(color: Colors.black),
                      bottomText: 'Miles',
                      bottomTextStyle: Styles.headerStyle4,
                      alignment: CrossAxisAlignment.start,
                    ),
                    ColumnLayout(
                      topText: 'Exuma',
                      topTextStyle:
                          Styles.headerStyle3.copyWith(color: Colors.black),
                      bottomText: 'Recieved From',
                      bottomTextStyle: Styles.headerStyle4,
                      alignment: CrossAxisAlignment.start,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          Center(
            child: Text(
              "How to get more miles",
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
