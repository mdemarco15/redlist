// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_animal_info_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtendedAnimalInfoResponseModel _$ExtendedAnimalInfoResponseModelFromJson(
        Map<String, dynamic> json) =>
    ExtendedAnimalInfoResponseModel(
      name: json['name'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => ExtendedInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExtendedAnimalInfoResponseModelToJson(
        ExtendedAnimalInfoResponseModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'result': instance.result,
    };
