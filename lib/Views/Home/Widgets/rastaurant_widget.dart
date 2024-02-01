import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/Constant/constant.dart';

class RestaurantWidget extends StatelessWidget{
  const RestaurantWidget({super.key, required this.image, required this.title, required this.logo, required this.time, required this.rating, this.onTap});

  final String image;
  final String title;
  final String logo;
  final String time;
  final String rating;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          width: width * 0.75,
          height: 195.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(padding: EdgeInsets.all(8.w),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: SizedBox(
                      height: 112.h,
                      width: width * 0.8,
                      child: Image.asset(image, fit: BoxFit.fill,),
                    ),
                  ),
                  Positioned(
                    right: 20.w,
                      top: 10.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                        child: Container(
                          color: kLightWhite,
                          child: Padding(padding: EdgeInsets.all(2.h),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.r),
                              child: Image.asset(logo, fit: BoxFit.cover, width: 20.w, height: 20.h,)
                          ),
                        ),
                      )
                  ))
                ],
              ),),
            ],
          ),
        ),
      ),
    );
  }

}