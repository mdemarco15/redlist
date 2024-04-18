import 'package:code_challenge/features/home/domain/entity/animal_by_id_entity.dart';
import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';

part 'animal_by_id_model.g.dart';

@JsonSerializable()
class AnimalByIdModel extends Model<AnimalByIdEntity> {
  final int? taxonid;
  @JsonKey(name: 'scientific_name')
  final String? scientificName;
  final String? kingdom;
  final String? phylum;
  @JsonKey(name: 'class')
  final String? clas;
  final String? order;
  final String? family;
  final String? genus;
  @JsonKey(name: 'main_common_name')
  final String? mainCommonName;
  final String? authority;
  final int? publishedYear;
  @JsonKey(name: 'assessment_date')
  final String? assessmentDate;
  final String? category;
  final String? criteria;
  final String? populationTrend;
  @JsonKey(name: 'marine_system')
  final bool? marineSystem;
  @JsonKey(name: 'freshwater_system')
  final bool? freshwaterSystem;
  @JsonKey(name: 'terrestrial_system')
  final bool? terrestrialSystem;
  final String? assessor;
  final String? reviewer;
  final int? elevationUpper;
  final int? elevationLower;
  final bool? amendedFlag;
  @JsonKey(name: 'amended_reason')
  final String? amendedReason;

  AnimalByIdModel({
    this.taxonid,
    this.scientificName,
    this.kingdom,
    this.phylum,
    this.clas,
    this.order,
    this.family,
    this.genus,
    this.mainCommonName,
    this.authority,
    this.publishedYear,
    this.assessmentDate,
    this.category,
    this.criteria,
    this.populationTrend,
    this.marineSystem,
    this.freshwaterSystem,
    this.terrestrialSystem,
    this.assessor,
    this.reviewer,
    this.elevationUpper,
    this.elevationLower,
    this.amendedFlag,
    this.amendedReason,
  });

  @override
  AnimalByIdEntity toEntity() {
    return AnimalByIdEntity(
      taxonid: taxonid,
      scientificName: scientificName,
      category: category,
      amendedFlag: amendedFlag,
      amendedReason: amendedReason,
      assessmentDate: assessmentDate,
      assessor: assessor,
      authority: authority,
      clas: clas,
      criteria: criteria,
      elevationLower: elevationLower,
      elevationUpper: elevationUpper,
      family: family,
      freshwaterSystem: freshwaterSystem,
      genus: genus,
      kingdom: kingdom,
      mainCommonName: mainCommonName,
      marineSystem: marineSystem,
      order: order,
      phylum: phylum,
      populationTrend: populationTrend,
      publishedYear: publishedYear,
      reviewer: reviewer,
      terrestrialSystem: terrestrialSystem,
    );
  }

  factory AnimalByIdModel.fromEntity(AnimalByIdEntity? entity) {
    return AnimalByIdModel(
        taxonid: entity?.taxonid,
        category: entity?.category,
        terrestrialSystem: entity?.terrestrialSystem,
        reviewer: entity?.reviewer,
        publishedYear: entity?.publishedYear,
        populationTrend: entity?.populationTrend,
        phylum: entity?.phylum,
        marineSystem: entity?.marineSystem,
        mainCommonName: entity?.mainCommonName,
        kingdom: entity?.kingdom,
        genus: entity?.genus,
        freshwaterSystem: entity?.freshwaterSystem,
        family: entity?.family,
        elevationUpper: entity?.elevationUpper,
        elevationLower: entity?.elevationLower,
        criteria: entity?.criteria,
        clas: entity?.clas,
        assessor: entity?.assessor,
        authority: entity?.authority,
        assessmentDate: entity?.assessmentDate,
        amendedReason: entity?.amendedReason,
        amendedFlag: entity?.amendedFlag,
        scientificName: entity?.scientificName,
        order: entity?.order);
  }

  factory AnimalByIdModel.fromJson(Map<String, dynamic> json) => _$AnimalByIdModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimalByIdModelToJson(this);
}
