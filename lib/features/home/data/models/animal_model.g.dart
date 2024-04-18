// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalModel _$AnimalModelFromJson(Map<String, dynamic> json) => AnimalModel(
      taxonid: json['taxonid'] as int?,
      scientificName: json['scientific_name'] as String?,
      subspecies: json['subspecies'] as String?,
      rank: json['rank'] as String?,
      subpopulation: json['subpopulation'],
    );

Map<String, dynamic> _$AnimalModelToJson(AnimalModel instance) =>
    <String, dynamic>{
      'taxonid': instance.taxonid,
      'scientific_name': instance.scientificName,
      'subspecies': instance.subspecies,
      'rank': instance.rank,
      'subpopulation': instance.subpopulation,
    };
