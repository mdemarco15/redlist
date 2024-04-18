// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalByIdModel _$AnimalByIdModelFromJson(Map<String, dynamic> json) =>
    AnimalByIdModel(
      taxonid: json['taxonid'] as int?,
      scientificName: json['scientific_name'] as String?,
      kingdom: json['kingdom'] as String?,
      phylum: json['phylum'] as String?,
      clas: json['class'] as String?,
      order: json['order'] as String?,
      family: json['family'] as String?,
      genus: json['genus'] as String?,
      mainCommonName: json['main_common_name'] as String?,
      authority: json['authority'] as String?,
      publishedYear: json['publishedYear'] as int?,
      assessmentDate: json['assessment_date'] as String?,
      category: json['category'] as String?,
      criteria: json['criteria'] as String?,
      populationTrend: json['populationTrend'] as String?,
      marineSystem: json['marine_system'] as bool?,
      freshwaterSystem: json['freshwater_system'] as bool?,
      terrestrialSystem: json['terrestrial_system'] as bool?,
      assessor: json['assessor'] as String?,
      reviewer: json['reviewer'] as String?,
      elevationUpper: json['elevationUpper'] as int?,
      elevationLower: json['elevationLower'] as int?,
      amendedFlag: json['amendedFlag'] as bool?,
      amendedReason: json['amended_reason'] as String?,
    );

Map<String, dynamic> _$AnimalByIdModelToJson(AnimalByIdModel instance) =>
    <String, dynamic>{
      'taxonid': instance.taxonid,
      'scientific_name': instance.scientificName,
      'kingdom': instance.kingdom,
      'phylum': instance.phylum,
      'class': instance.clas,
      'order': instance.order,
      'family': instance.family,
      'genus': instance.genus,
      'main_common_name': instance.mainCommonName,
      'authority': instance.authority,
      'publishedYear': instance.publishedYear,
      'assessment_date': instance.assessmentDate,
      'category': instance.category,
      'criteria': instance.criteria,
      'populationTrend': instance.populationTrend,
      'marine_system': instance.marineSystem,
      'freshwater_system': instance.freshwaterSystem,
      'terrestrial_system': instance.terrestrialSystem,
      'assessor': instance.assessor,
      'reviewer': instance.reviewer,
      'elevationUpper': instance.elevationUpper,
      'elevationLower': instance.elevationLower,
      'amendedFlag': instance.amendedFlag,
      'amended_reason': instance.amendedReason,
    };
