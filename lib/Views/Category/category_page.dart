import 'package:flutter/material.dart';
import 'package:foodie/Common/reusable_style.dart';
import 'package:foodie/Common/reusable_text.dart';
import 'package:foodie/Constant/constant.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: koffWhite,
        title: ReusableText(text: "Categories", style: appStyle(18, kGray, FontWeight.w600)),
      ),
      body: const Center(
        child: Text("Category Page"),
      ),
    );
  }

}