import 'package:crow/crow.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:code_challenge/features/home/data/models/image_model.dart';
import 'package:code_challenge/features/home/data/models/network_model.dart';
import 'package:code_challenge/features/home/data/models/rating_model.dart';
import 'package:code_challenge/features/home/data/models/schedule_model.dart';
import 'package:code_challenge/features/home/domain/entity/show_entity.dart';

part 'show_model.g.dart';

@JsonSerializable()
class ShowModel extends Model<ShowEntity> {
  ShowModel(
      {this.id,
      this.url,
      this.name,
      this.type,
      this.language,
      this.genres,
      this.status,
      this.runtime,
      this.averageRuntime,
      this.premiered,
      this.ended,
      // this.externals,
      this.image,
      // this.lLinks,
      this.network,
      this.officialSite,
      this.rating,
      this.schedule,
      this.summary,
      this.updated,
      this.weight});

  factory ShowModel.fromEntity(ShowEntity entity) {
    return ShowModel(
        id: entity.id,
        averageRuntime: entity.averageRuntime,
        ended: entity.ended,
        // externals: entity.externals,
        image: ImageModel.fromEntity(entity.image!),
        // lLinks: entity.externals,
        genres: entity.genres,
        language: entity.language,
        name: entity.name,
        network: NetworkModel.fromEntity(entity.network!),
        officialSite: entity.officialSite,
        premiered: entity.premiered,
        rating: RatingModel.fromEntity(entity.rating!),
        runtime: entity.runtime,
        schedule: ScheduleModel.fromEntity(entity.schedule!),
        status: entity.status,
        summary: entity.summary,
        type: entity.type,
        updated: entity.updated,
        url: entity.url,
        weight: entity.weight);
  }

  factory ShowModel.fromJson(Map<String, dynamic> json) => _$ShowModelFromJson(json);

  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'language')
  String? language;
  @JsonKey(name: 'genres')
  List<String>? genres;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'runtime')
  int? runtime;
  @JsonKey(name: 'averageRuntime')
  int? averageRuntime;
  @JsonKey(name: 'premiered')
  String? premiered;
  @JsonKey(name: 'ended')
  String? ended;
  @JsonKey(name: 'officialSite')
  String? officialSite;
  @JsonKey(name: 'schedule')
  ScheduleModel? schedule;
  @JsonKey(name: 'rating')
  RatingModel? rating;
  @JsonKey(name: 'weight')
  int? weight;
  @JsonKey(name: 'network')
  NetworkModel? network;
  // @JsonKey(name: 'externals')
  // Externals? externals;
  @JsonKey(name: 'image')
  ImageModel? image;
  @JsonKey(name: 'summary')
  String? summary;
  @JsonKey(name: 'updated')
  int? updated;
  // @JsonKey(name: 'lLinks')
  // Links? lLinks;

  @override
  ShowEntity toEntity() {
    return ShowEntity(
        id: id,
        averageRuntime: averageRuntime,
        ended: ended,
        genres: genres,
        // externals: externals,
        image: image!.toEntity(),
        // lLinks: lLinks,
        language: language,
        name: name,
        network: network!.toEntity(),
        officialSite: officialSite,
        premiered: premiered,
        rating: rating!.toEntity(),
        runtime: runtime,
        schedule: schedule!.toEntity(),
        status: status,
        summary: summary,
        type: type,
        updated: updated,
        url: url,
        weight: weight);
  }

  @override
  Map<String, dynamic> toJson() => _$ShowModelToJson(this);
}
