import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Common/custom_container.dart';
import '../../Constant/constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(preferredSize: Size.fromHeight(120.h), child: Container(height: 120)
      ),
      body: SafeArea(
        child: CustomContainer(containerContent: Container(),),
      ),
    );
  }
}