import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jmlog/core/constants/const_color.dart';
import 'package:jmlog/presentation/views/feature/review_list.dart';

class ReviewListPage extends StatelessWidget {
  const ReviewListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: SearchBar(
            trailing: [IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )],
            surfaceTintColor: WidgetStateProperty.all(jmlogColorScheme.surfaceContainerHigh),
            elevation: const WidgetStatePropertyAll(0),
          ),
        ),
        SizedBox(height: 8.h,),
        Expanded(child: ReviewList())
      ]
    );
  }
}