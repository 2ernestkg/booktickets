import 'package:booktickets/presentation/utils/app_layout.dart';
import 'package:booktickets/presentation/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/one.png"),
                )),
          ),
          const Gap(10),
          Text("Open Space",
              style: Styles.headerStyle2.copyWith(color: Styles.kakiColor)),
          const Gap(5),
          Text("London",
              style: Styles.headerStyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text("\$40/night",
              style: Styles.headerStyle1.copyWith(color: Styles.kakiColor)),
        ],
      ),
    );
  }
}
