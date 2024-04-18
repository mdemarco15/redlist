// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtendedInfoModel _$ExtendedInfoModelFromJson(Map<String, dynamic> json) =>
    ExtendedInfoModel(
      speciesId: json['species_id'] as int?,
      taxonomicnotes: json['taxonomicnotes'] as String?,
      rationale: json['rationale'] as String?,
      geographicrange: json['geographicrange'] as String?,
      population: json['population'] as String?,
      populationtrend: json['populationtrend'] as String?,
      habitat: json['habitat'] as String?,
      threats: json['threats'] as String?,
      conservationmeasures: json['conservationmeasures'] as String?,
      usetrade: json['usetrade'] as String?,
    );

Map<String, dynamic> _$ExtendedInfoModelToJson(ExtendedInfoModel instance) =>
    <String, dynamic>{
      'species_id': instance.speciesId,
      'taxonomicnotes': instance.taxonomicnotes,
      'rationale': instance.rationale,
      'geographicrange': instance.geographicrange,
      'population': instance.population,
      'populationtrend': instance.populationtrend,
      'habitat': instance.habitat,
      'threats': instance.threats,
      'conservationmeasures': instance.conservationmeasures,
      'usetrade': instance.usetrade,
    };
