import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jmlog/presentation/view_models/ReviewProvider.dart';
import 'package:jmlog/core/constants/ConstColor.dart';

class ReviewListPage extends ConsumerWidget {
  const ReviewListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviews = ref.watch(getReviewsProvider('iYtCCj0EW8krYHv1Vowa'));
    return reviews.when(
      loading: () => const Center(
        child: Text('load'),
      ),
      data: (reviews) {
        // データ取得後に表示する内容
        return ListView.builder(
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 50,
              child: ListTile(
                onTap: () { print("${reviews[index].taste} star"); },
                title: Center(
                  child: Text(
                    reviews[index].name.toString(),
                  ),
                ),
                tileColor: jmlogColorScheme.surfaceContainer,
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
