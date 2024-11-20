import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:jmlog/data/models/review.dart';
import 'package:jmlog/data/repositories/reviewRepository.dart';
import 'package:jmlog/data/services/reviewService.dart';

part 'ReviewProvider.g.dart';

@riverpod
Future<List<Review>> getReviews(Ref ref, String id) async {
  final _service = ReviewService(repository: ReviewRepository());
  return _service.getRevies(id);
}
