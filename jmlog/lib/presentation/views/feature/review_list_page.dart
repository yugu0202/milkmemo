import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jmlog/presentation/view_models/review_provider.dart';
import 'package:jmlog/core/constants/const_color.dart';

class ReviewListPage extends ConsumerWidget {
  const ReviewListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviews = ref.watch(reviewProvider('iYtCCj0EW8krYHv1Vowa'));
    return reviews.when(
      loading: () => const Center(
        child: Text('load'),
      ),
      data: (reviews) {
        // データ取得後に表示する内容
        return ListView.builder(
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 72.h,
                width: 360.w,
                child: ListTile(
                  onTap: () {},
                  title: Center(
                    child: Text(
                      reviews[index].name.toString(),
                    ),
                  ),
                  tileColor: jmlogColorScheme.surfaceContainer,
                ),
              ),
            );
          },
        );
      },
      error: (error, stack) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
