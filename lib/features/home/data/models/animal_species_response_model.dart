import 'package:code_challenge/features/home/data/models/animal_model.dart';
import 'package:code_challenge/features/home/domain/entity/animal_species_response_entity.dart';
import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';

part 'animal_species_response_model.g.dart';

@JsonSerializable()
class AnimalSpeciesResponseModel extends Model<AnimalSpeciesResponseEntity> {
  final int? count;
  final String? category;
  @JsonKey(name: 'result')
  final List<AnimalModel>? result;

  AnimalSpeciesResponseModel({this.count, this.category, this.result});

  @override
  AnimalSpeciesResponseEntity toEntity() {
    return AnimalSpeciesResponseEntity(count: count, category: category, animalList: result?.map((e) => e.toEntity()).toList());
  }

  factory AnimalSpeciesResponseModel.fromEntity(AnimalSpeciesResponseEntity? entity) {
    return AnimalSpeciesResponseModel(
      count: entity?.count,
      category: entity?.category,
      result: entity?.animalList?.map((e) => AnimalModel.fromEntity(e)).toList(),
    );
  }

  factory AnimalSpeciesResponseModel.fromJson(Map<String, dynamic> json) => _$AnimalSpeciesResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimalSpeciesResponseModelToJson(this);
}
