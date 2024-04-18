import 'package:code_challenge/features/home/data/models/animal_by_id_model.dart';
import 'package:code_challenge/features/home/domain/entity/animal_by_id_response_entity.dart';
import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';

part 'animal_by_id_response_model.g.dart';

@JsonSerializable()
class AnimalByIdResponseModel extends Model<AnimalByIdResponseEntity> {
  final String? name;
  final List<AnimalByIdModel>? result;

  AnimalByIdResponseModel({this.name, this.result});

  @override
  AnimalByIdResponseEntity toEntity() {
    return AnimalByIdResponseEntity(name: name, result: result?.map((e) => e.toEntity()).toList());
  }

  factory AnimalByIdResponseModel.fromEntity(AnimalByIdResponseEntity? entity) {
    return AnimalByIdResponseModel(
      name: entity?.name,
      result: entity?.result?.map((e) => AnimalByIdModel.fromEntity(e)).toList(),
    );
  }

  factory AnimalByIdResponseModel.fromJson(Map<String, dynamic> json) => _$AnimalByIdResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimalByIdResponseModelToJson(this);
}
