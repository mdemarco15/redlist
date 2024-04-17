import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:code_challenge/features/home/domain/entity/rating_entity.dart';

part 'rating_model.g.dart';

@JsonSerializable()
class RatingModel extends Model<RatingEntity> {
  RatingModel({
    this.average,
  });

  factory RatingModel.fromEntity(RatingEntity entity) {
    return RatingModel(
      average: entity.average,
    );
  }

  factory RatingModel.fromJson(Map<String, dynamic> json) => _$RatingModelFromJson(json);

  @JsonKey(name: 'average')
  double? average;

  @override
  RatingEntity toEntity() {
    return RatingEntity(
      average: average,
    );
  }

  @override
  Map<String, dynamic> toJson() => _$RatingModelToJson(this);
}
