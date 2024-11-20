// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      name: json['name'] as String,
      taste: (json['taste'] as num).toInt(),
      date: const DateTimeConverter().fromJson(json['date'] as Timestamp),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'taste': instance.taste,
      'date': const DateTimeConverter().toJson(instance.date),
    };
