import 'package:crow/crow.dart';

class CountryEntity extends Entity {
  const CountryEntity({this.code, this.timezone, this.name,});

  final String? name;
  final String? code;
  final String? timezone;

}
