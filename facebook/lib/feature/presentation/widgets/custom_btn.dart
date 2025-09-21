import 'package:facebook/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custombtn extends StatelessWidget {
  final Color? color;
  final String? text;
  final Color? textColor;
  final IconData? icon;
  final Widget? child;
  final bool? isDesktop;
  const Custombtn({
    super.key,
    this.color,
    this.text,
    this.textColor,
    this.icon,
    this.child,
    this.isDesktop = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: color ?? ColorManager.grey,
      ),
      child:
          child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: textColor ?? Colors.black),

              isDesktop == true
                  ? Text(
                      text ?? '',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,

                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: textColor ?? Colors.black,
                      ),
                    )
                  : Flexible(
                      child: Text(
                        text ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,

                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: textColor ?? Colors.black,
                        ),
                      ),
                    ),
            ],
          ),
    );
  }
}
