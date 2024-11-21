import 'package:jmlog/data/models/review.dart';
import 'package:jmlog/data/repositories/review_repository.dart';

class ReviewService {
  const ReviewService({required ReviewRepository repository})
      : _repository = repository;
  final ReviewRepository _repository;

  Future<List<Review>> getRevies(String id) {
    return _repository.getReviews(id);
  }
}
