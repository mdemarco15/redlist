import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:code_challenge/features/home/domain/entity/image_entity.dart';

part 'image_model.g.dart';

@JsonSerializable()
class ImageModel extends Model<ImageEntity> {
  ImageModel({this.medium, this.original});

  factory ImageModel.fromEntity(ImageEntity entity) {
    return ImageModel(medium: entity.medium, original: entity.original);
  }

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);

  @JsonKey(name: 'medium')
  String? medium;
  @JsonKey(name: 'original')
  String? original;

  @override
  ImageEntity toEntity() {
    return ImageEntity(medium: medium, original: original);
  }

  @override
  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
