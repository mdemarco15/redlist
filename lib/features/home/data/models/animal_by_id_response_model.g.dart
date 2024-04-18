// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_by_id_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalByIdResponseModel _$AnimalByIdResponseModelFromJson(
        Map<String, dynamic> json) =>
    AnimalByIdResponseModel(
      name: json['name'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => AnimalByIdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimalByIdResponseModelToJson(
        AnimalByIdResponseModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'result': instance.result,
    };
