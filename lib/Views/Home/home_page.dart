import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/Common/custom_appbar.dart';
import 'package:foodie/Common/custom_container.dart';
import 'package:foodie/Constant/constant.dart';

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
      body: SafeArea(
        child: CustomContainer(containerContent: Container(),),
      ),
    );
  }
}