import 'package:code_challenge/features/animal_detail/domain/entity/extended_info_entity.dart';
import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';

part 'extended_info_model.g.dart';

@JsonSerializable()
class ExtendedInfoModel extends Model<ExtendedInfoEntity> {
  @JsonKey(name: 'species_id')
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

  ExtendedInfoModel({
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

  @override
  ExtendedInfoEntity toEntity() {
    return ExtendedInfoEntity(
      speciesId: speciesId,
      taxonomicnotes: taxonomicnotes,
      rationale: rationale,
      geographicrange: geographicrange,
      population: population,
      populationtrend: populationtrend,
      habitat: habitat,
      threats: threats,
      conservationmeasures: conservationmeasures,
      usetrade: usetrade,
    );
  }

  factory ExtendedInfoModel.fromEntity(ExtendedInfoEntity? entity) {
    return ExtendedInfoModel(
      speciesId: entity?.speciesId,
      taxonomicnotes: entity?.taxonomicnotes,
      rationale: entity?.rationale,
      geographicrange: entity?.geographicrange,
      population: entity?.population,
      habitat: entity?.habitat,
      threats: entity?.threats,
      conservationmeasures: entity?.conservationmeasures,
      usetrade: entity?.usetrade,
    );
  }

  factory ExtendedInfoModel.fromJson(Map<String, dynamic> json) => _$ExtendedInfoModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExtendedInfoModelToJson(this);
}
