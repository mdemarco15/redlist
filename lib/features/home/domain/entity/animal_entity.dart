import 'package:crow/crow.dart';

class AnimalEntity extends Entity {
  final int? taxonid;
  final String? scientificName;
  final String? subspecies;
  final String? rank;
  final dynamic subpopulation;

  const AnimalEntity({
    this.taxonid,
    this.scientificName,
    this.subspecies,
    this.rank,
    this.subpopulation,
  });
}
