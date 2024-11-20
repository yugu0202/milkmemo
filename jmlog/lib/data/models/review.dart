import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jmlog/data/converter/datetime_converter.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const Review._();
  const factory Review({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'taste') required int taste,
    @JsonKey(name: 'date') @DateTimeConverter() required DateTime date,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
