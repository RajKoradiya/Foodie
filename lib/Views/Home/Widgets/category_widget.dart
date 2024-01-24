import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Common/reusable_style.dart';
import '../../../Common/reusable_text.dart';
import '../../../Constant/constant.dart';
import '../../../Controllers/category_controller.dart';
import '../../Category/all_category.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
    this.category,
  });
  var category;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return GestureDetector(
      onTap: () {
        if (controller.categoryValue == category['_id']) {
          controller.updateCategory = '';
          controller.updateTitle = '';
        } else if (category['value'] == 'more') {
          Get.to(() => AllCategories(),
              transition: Transition.fadeIn,
              duration: const Duration(milliseconds: 300));
        } else {
          controller.updateCategory = category['_id'];
          controller.updateTitle = category['title'];
        }
      },
      child: Obx(() => Container(
        margin: EdgeInsets.only(right: 5.w),
        padding: EdgeInsets.only(top: 5.h),
        width: width * 0.19,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
                color: controller.categoryValue == category['_id']
                    ? kSecondary
                    : koffWhite,
                width: 0.5.w)),
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(
                '${category['image']}',
                fit: BoxFit.contain,
              ),
            ),
            ReusableText(
                text: category['title'],
                style: appStyle(10, kDark, FontWeight.w400))
          ],
        ),
      )),
    );
  }
}