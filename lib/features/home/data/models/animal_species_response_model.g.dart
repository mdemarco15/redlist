// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_species_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalSpeciesResponseModel _$AnimalSpeciesResponseModelFromJson(
        Map<String, dynamic> json) =>
    AnimalSpeciesResponseModel(
      count: json['count'] as int?,
      category: json['category'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => AnimalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimalSpeciesResponseModelToJson(
        AnimalSpeciesResponseModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'category': instance.category,
      'result': instance.result,
    };
