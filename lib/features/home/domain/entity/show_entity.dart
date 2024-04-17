import 'package:crow/crow.dart';
import 'package:code_challenge/features/home/domain/entity/image_entity.dart';
import 'package:code_challenge/features/home/domain/entity/network_entity.dart';
import 'package:code_challenge/features/home/domain/entity/rating_entity.dart';
import 'package:code_challenge/features/home/domain/entity/schedule_entity.dart';

class ShowEntity extends Entity {
  const ShowEntity({
    required this.id,
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
    this.officialSite,
    this.schedule,
    this.rating,
    this.weight,
    this.network,
    // this.externals,
    this.image,
    // this.lLinks,
    this.summary,
    this.updated,
  });

  final int? id;
  final String? url;
  final String? name;
  final String? type;
  final String? language;
  final List<String>? genres;
  final String? status;
  final int? runtime;
  final int? averageRuntime;
  final String? premiered;
  final String? ended;
  final String? officialSite;
  final ScheduleEntity? schedule;
  final RatingEntity? rating;
  final int? weight;
  final NetworkEntity? network;
  // final ExternalsEntity? externals;
  final ImageEntity? image;
  // final LinksEntity? lLinks;
  final String? summary;
  final int? updated;
}
