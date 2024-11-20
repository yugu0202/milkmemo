import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jmlog/data/models/review.dart';
import 'package:jmlog/data/repositories/review_repository.dart';
import 'package:jmlog/data/services/review_service.dart';

final reviewProvider = FutureProvider<List<Review>>((ref) async {
  final _service = ReviewService(repository: ReviewRepository());
  return _service.getRevies();
});
