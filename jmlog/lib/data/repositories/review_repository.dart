import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jmlog/data/models/review.dart';

class ReviewRepository {
  Future<List<Review>> getReviews() async {
    final firestore = FirebaseFirestore.instanceFor(
        app: Firebase.app(), databaseId: 'jmlog-firestore');
    try {
      final snapShot = await firestore
          .collection('users')
          .doc('iYtCCj0EW8krYHv1Vowa')
          .collection('reviews')
          .get();
      final reviews = <Review>[];
      snapShot.docs.forEach((content) {
        reviews.add(Review.fromJson(content.data()));
      });
      return reviews;
    } on FirebaseException catch (e) {
      throw e.toString();
    }
  }
}
