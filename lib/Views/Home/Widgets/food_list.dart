import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/Constant/constant.dart';
import 'package:foodie/Constant/uidata.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      padding: EdgeInsets.only(left: 12.w,top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var retaurant = restaurants[i];
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 200.h,
              width: 160.w,
              color: kYellow,
            ),
          );
        }),
      ),
    );
  }

}