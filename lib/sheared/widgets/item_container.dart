import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;

  const ItemContainer({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 10.w, horizontal: 15.h),
      margin: .all(2.w),
      height: height,
      width: width,
      alignment: alignment,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Colors.white),
        borderRadius: BorderRadius.all(.circular(10)),
      ),
      child: child,
    );
  }
}
