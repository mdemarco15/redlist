import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:code_challenge/features/home/domain/entity/country_entity.dart';

part 'country_model.g.dart';

@JsonSerializable()
class CountryModel extends Model<CountryEntity> {
  CountryModel({this.name, this.code, this.timezone});

  factory CountryModel.fromEntity(CountryEntity entity) {
    return CountryModel(name: entity.name, timezone: entity.timezone, code: entity.code);
  }

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);

  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'timezone')
  String? timezone;

  @override
  CountryEntity toEntity() {
    return CountryEntity(name: name, code: code, timezone: timezone);
  }

  @override
  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}
