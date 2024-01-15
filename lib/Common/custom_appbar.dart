import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/Common/reusable_style.dart';
import 'package:foodie/Common/reusable_text.dart';
import 'package:foodie/Constant/constant.dart';

class CustomAppbar extends StatelessWidget  {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: koffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: kSecondary,
              backgroundImage: const AssetImage('image/user-profile.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                      text: "Deliver to",
                      style: appStyle(13, kSecondary, FontWeight.w400)
                  ),
                  SizedBox(
                    width: width * 0.65,
                    child: Text(
                      "362205, Shapur(Shorath),Junagadh,Gujrat,India",
                      overflow: TextOverflow.ellipsis,
                      style: appStyle(11, kGray, FontWeight.w300),
                    ),
                  ),
                  const Text(
                    "❄️",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }

}