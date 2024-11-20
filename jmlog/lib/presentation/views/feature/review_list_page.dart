import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jmlog/core/utils/ReviewProvider.dart';

class ReviewListPage extends ConsumerWidget {
  const ReviewListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviews = ref.watch(reviewProvider);
    return reviews.when(
      loading: () => const Center(
        child: Text('load'),
      ),
      data: (reviews) {
        // データ取得後に表示する内容
        return Text(reviews[0].id.toString());
      },
      error: (error, stack) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
