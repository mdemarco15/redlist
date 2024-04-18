import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';

class AnimalByIdEntity extends Entity {
  final int? taxonid;
  final String? scientificName;
  final String? kingdom;
  final String? phylum;
  @JsonKey(name: 'class')
  final String? clas;
  final String? order;
  final String? family;
  final String? genus;
  final String? mainCommonName;
  final String? authority;
  final int? publishedYear;
  final String? assessmentDate;
  final String? category;
  final String? criteria;
  final String? populationTrend;
  final bool? marineSystem;
  final bool? freshwaterSystem;
  final bool? terrestrialSystem;
  final String? assessor;
  final String? reviewer;
  final int? elevationUpper;
  final int? elevationLower;
  final bool? amendedFlag;
  final String? amendedReason;

  const AnimalByIdEntity({
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
}
