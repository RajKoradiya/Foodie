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
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: kSecondary,
                  backgroundImage: const AssetImage('assets/images/user-profile.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 7, left: 12),
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
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                getTimeOfDay(),
                style: const TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
      ),

    );
  }
  String getTimeOfDay() {
    DateTime dt = DateTime.now();
    int hour = dt.hour;

    if(hour >= 0 && hour <= 12){
      return ' 🌞 ';
    }
    else if(hour >= 12 && hour <= 16) {
      return ' ⛅ ';
    }
    else{
      return ' 🌙 ';
    }
  }
}