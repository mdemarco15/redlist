import 'package:crow/crow.dart';
import 'package:code_challenge/features/home/domain/entity/country_entity.dart';

class NetworkEntity extends Entity {
  const NetworkEntity({
    this.id,
    this.name,
    this.country,
    this.officialSite,
  });

  final int? id;
  final String? name;
  final CountryEntity? country;
  final String? officialSite;
}
