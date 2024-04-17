import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:code_challenge/features/home/data/models/show_model.dart';
import 'package:code_challenge/features/home/domain/entity/show_response_entity.dart';

part 'show_response_model.g.dart';

@JsonSerializable()
class ShowResponseModel extends Model<ShowResponseEntity> {
  ShowResponseModel(
    this.score,
    this.show,
  );

  factory ShowResponseModel.fromEntity(ShowResponseEntity entity) {
    return ShowResponseModel(
      entity.score,
      ShowModel.fromEntity(entity.show!),
    );
  }

  factory ShowResponseModel.fromJson(Map<String, dynamic> json) => _$ShowResponseModelFromJson(json);

  @JsonKey(name: 'score')
  double? score;
  @JsonKey(name: 'show')
  ShowModel? show;

  @override
  ShowResponseEntity toEntity() {
    return ShowResponseEntity(
      score: score,
      show: show!.toEntity(),
    );
  }

  @override
  Map<String, dynamic> toJson() => _$ShowResponseModelToJson(this);
}
