import 'package:jmlog/data/models/review.dart';

abstract class ReviewRepositoryInterface {
  Future<List<Review>> getReviews();
}
