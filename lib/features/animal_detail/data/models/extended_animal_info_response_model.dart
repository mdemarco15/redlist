import 'package:code_challenge/features/animal_detail/data/models/extended_info_model.dart';
import 'package:code_challenge/features/animal_detail/domain/entity/extended_animal_info_response_entity.dart';
import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';

part 'extended_animal_info_response_model.g.dart';

@JsonSerializable()
class ExtendedAnimalInfoResponseModel extends Model<ExtendedAnimalInfoResponseEntity> {
  final String? name;
  final List<ExtendedInfoModel>? result;

  ExtendedAnimalInfoResponseModel({this.name, this.result});

  @override
  ExtendedAnimalInfoResponseEntity toEntity() {
    return ExtendedAnimalInfoResponseEntity(name: name, result: result?.map((e) => e.toEntity()).toList());
  }

  factory ExtendedAnimalInfoResponseModel.fromEntity(ExtendedAnimalInfoResponseEntity? entity) {
    return ExtendedAnimalInfoResponseModel(
      name: entity?.name,
      result: entity?.result?.map((e) => ExtendedInfoModel.fromEntity(e)).toList(),
    );
  }

  factory ExtendedAnimalInfoResponseModel.fromJson(Map<String, dynamic> json) => _$ExtendedAnimalInfoResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExtendedAnimalInfoResponseModelToJson(this);
}
