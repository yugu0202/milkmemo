import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jmlog/data/models/review.dart';

class ReviewRepository {
  Future<List<Review>> getReviews(String id) async {
    final firestore = FirebaseFirestore.instanceFor(
        app: Firebase.app(), databaseId: 'jmlog-firestore');
    try {
      final snapShot = await firestore
          .collection('users')
          .doc(id)
          .collection('reviews')
          .get();
      final reviews = <Review>[];
      for (final content in snapShot.docs) {
        reviews.add(Review.fromJson(content.data()));
      }
      return reviews;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}
