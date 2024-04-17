// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowResponseModel _$ShowResponseModelFromJson(Map<String, dynamic> json) =>
    ShowResponseModel(
      (json['score'] as num?)?.toDouble(),
      json['show'] == null
          ? null
          : ShowModel.fromJson(json['show'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShowResponseModelToJson(ShowResponseModel instance) =>
    <String, dynamic>{
      'score': instance.score,
      'show': instance.show,
    };
