// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jokes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeModel _$JokeModelFromJson(Map<String, dynamic> json) {
  return JokeModel(
    json['category'] as String?,
    json['delivery'] as String?,
    json['flags'] == null
        ? null
        : FlagsModel.fromJson(json['flags'] as Map<String, dynamic>),
    json['id'] as int?,
    json['safe'] as bool?,
    json['setup'] as String?,
    json['type'] as String?,
  );
}

Map<String, dynamic> _$JokeModelToJson(JokeModel instance) => <String, dynamic>{
      'category': instance.category,
      'delivery': instance.delivery,
      'flags': instance.flags,
      'id': instance.id,
      'safe': instance.safe,
      'setup': instance.setup,
      'type': instance.type,
    };
