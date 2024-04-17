import 'package:crow/crow.dart';
import 'package:code_challenge/features/home/domain/entity/show_entity.dart';

class ShowResponseEntity extends Entity {
  const ShowResponseEntity({this.score, this.show});

  final double? score;
  final ShowEntity? show;
}
