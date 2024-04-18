import 'package:crow/crow.dart';

class ExtendedInfoEntity extends Entity {
  final int? speciesId;
  final String? taxonomicnotes;
  final String? rationale;
  final String? geographicrange;
  final String? population;
  final String? populationtrend;
  final String? habitat;
  final String? threats;
  final String? conservationmeasures;
  final String? usetrade;

  const ExtendedInfoEntity({
    this.speciesId,
    this.taxonomicnotes,
    this.rationale,
    this.geographicrange,
    this.population,
    this.populationtrend,
    this.habitat,
    this.threats,
    this.conservationmeasures,
    this.usetrade,
  });
}
