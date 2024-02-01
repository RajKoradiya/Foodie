import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/Constant/constant.dart';
import 'package:foodie/Constant/uidata.dart';
import 'package:foodie/Views/Home/Widgets/rastaurant_widget.dart';

class NearBYRestaurant extends StatelessWidget {
  const NearBYRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195.h,
      padding: EdgeInsets.only(left: 12.w,top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var restaurant = restaurants[i];
          return RestaurantWidget(
              image: restaurant["image"],
              title: restaurant["title"],
              logo: restaurant["logo"],
              time: restaurant["time"],
              rating: restaurant["ratingCount"]
          );
        }),
      ),
    );
  }

}