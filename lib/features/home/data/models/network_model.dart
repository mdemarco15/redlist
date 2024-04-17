import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:code_challenge/features/home/data/models/country_model.dart';
import 'package:code_challenge/features/home/domain/entity/network_entity.dart';

part 'network_model.g.dart';

@JsonSerializable()
class NetworkModel extends Model<NetworkEntity> {
  NetworkModel({this.id, this.country, this.name, this.officialSite});

  factory NetworkModel.fromEntity(NetworkEntity entity) {
    return NetworkModel(id: entity.id, country: CountryModel.fromEntity(entity.country!), name: entity.name, officialSite: entity.officialSite);
  }

  factory NetworkModel.fromJson(Map<String, dynamic> json) => _$NetworkModelFromJson(json);

  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'country')
  CountryModel? country;
  @JsonKey(name: 'officialSite')
  String? officialSite;

  @override
  NetworkEntity toEntity() {
    return NetworkEntity(id: id, country: country!.toEntity(), name: name, officialSite: officialSite);
  }

  @override
  Map<String, dynamic> toJson() => _$NetworkModelToJson(this);
}
