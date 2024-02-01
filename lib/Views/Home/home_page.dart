import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/Common/custom_appbar.dart';
import 'package:foodie/Common/custom_container.dart';
import 'package:foodie/Common/heading.dart';
import 'package:foodie/Constant/constant.dart';
import 'package:foodie/Views/Home/Widgets/category_list.dart';
import 'package:foodie/Views/Home/Widgets/food_list.dart';
import 'package:foodie/Views/Home/Widgets/nearby_restaurant_list.dart';
import 'package:foodie/Views/Home/all_nearby_restaurant.dart';
import 'package:get/get.dart';

import 'all_food_nearby.dart';
import 'all_try_new_something.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.h),
          child: const CustomAppbar()
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.778,
        child: SafeArea(
          child: CustomContainer(containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                text: "NearBy Restaurant",
              onTap: () => {
                  Get.to(const AllNearByRestaurant(),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 500))
              },
              ),
              const NearBYRestaurant(),
              Heading(
                text: "Try Something New",
                onTap: () => {
                  Get.to(const AllTryNewSomething(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 500))
                },),
              const FoodList(),
              Heading(
                text: "Food NearBy You",
                onTap: () => {
                  Get.to(const AllFoodNearBy(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 500))
                },),
              const FoodList()
            ],
          ),),
        ),
      ),
    );
  }
}
