import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:code_challenge/features/home/domain/entity/schedule_entity.dart';

part 'schedule_model.g.dart';

@JsonSerializable()
class ScheduleModel extends Model<ScheduleEntity> {
  ScheduleModel({this.days, this.time});

  factory ScheduleModel.fromEntity(ScheduleEntity entity) {
    return ScheduleModel(days: entity.days, time: entity.time);
  }

  factory ScheduleModel.fromJson(Map<String, dynamic> json) => _$ScheduleModelFromJson(json);

  @JsonKey(name: 'time')
  String? time;
  @JsonKey(name: 'days')
  List<String>? days;

  @override
  ScheduleEntity toEntity() {
    return ScheduleEntity(time: time, days: days);
  }

  @override
  Map<String, dynamic> toJson() => _$ScheduleModelToJson(this);
}
