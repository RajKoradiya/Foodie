import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/Constant/constant.dart';

class BackGroundContainer extends StatelessWidget {
  const BackGroundContainer({super.key, required this.child, required this.color});

  final Widget child;
  final Color color;

  @override

  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r)
        ),
        image: const DecorationImage(
          image: AssetImage("assets/images/restaurant_bk.png"),
          fit: BoxFit.contain,
          opacity: 7,
          alignment: Alignment(0, 1.2)
        )
      ),
      child: child,
    );
  }

}