import 'package:flutter/material.dart';
import 'package:foodie/Common/reusable_style.dart';
import 'package:foodie/Common/reusable_text.dart';
import 'package:foodie/Constant/constant.dart';

class AllNearByRestaurant extends StatelessWidget {
  const AllNearByRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: koffWhite,
        title: ReusableText(text: "All NearBy Restaurant", style: appStyle(14, kGray, FontWeight.w600)),
      ),
      body: const Center(
        child: Text("All NearBy Restaurant"),
      ),
    );
  }
}