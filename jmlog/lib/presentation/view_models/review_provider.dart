import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:jmlog/data/models/review.dart';
import 'package:jmlog/data/repositories/review_repository.dart';
import 'package:jmlog/data/services/review_service.dart';

part 'review_provider.g.dart';

@riverpod
Future<List<Review>> review(Ref ref, String id) async {
  final service = ReviewService(repository: ReviewRepository());
  return service.getRevies(id);
}
