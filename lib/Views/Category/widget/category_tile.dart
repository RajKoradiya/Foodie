import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Common/reusable_style.dart';
import '../../../Common/reusable_text.dart';
import '../../../Constant/constant.dart';
import '../category_page.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({
    super.key,
    required this.category,
  });

  var category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => const CategoryPage(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 500));
      },
      leading: CircleAvatar(
        radius: 22.r,
        backgroundColor: kLightWhite,
        child: Image.asset("${category["image"]}", fit: BoxFit.contain,),
      ),
      title: ReusableText(text: category["title"], style: appStyle(13, kDark, FontWeight.normal)),
      trailing: Icon(Icons.arrow_forward_ios_outlined, size: 15.r, color: kGray),
    );
  }
}