import 'package:code_challenge/features/home/domain/entity/animal_entity.dart';
import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';

part 'animal_model.g.dart';

@JsonSerializable()
class AnimalModel extends Model<AnimalEntity> {
  final int? taxonid;
  @JsonKey(name: 'scientific_name')
  final String? scientificName;
  final String? subspecies;
  final String? rank;
  final dynamic subpopulation;

  AnimalModel({
    this.taxonid,
    this.scientificName,
    this.subspecies,
    this.rank,
    this.subpopulation,
  });

  @override
  AnimalEntity toEntity() {
    return AnimalEntity(
      taxonid: taxonid,
      scientificName: scientificName,
      subspecies: subspecies,
      rank: rank,
      subpopulation: subpopulation,
    );
  }

  factory AnimalModel.fromEntity(AnimalEntity? entity) {
    return AnimalModel(
      taxonid: entity?.taxonid,
      scientificName: entity?.scientificName,
      subspecies: entity?.subspecies,
      rank: entity?.rank,
      subpopulation: entity?.subpopulation,
    );
  }

  factory AnimalModel.fromJson(Map<String, dynamic> json) => _$AnimalModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimalModelToJson(this);
}
