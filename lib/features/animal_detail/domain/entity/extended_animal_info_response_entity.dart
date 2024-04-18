import 'package:code_challenge/features/animal_detail/domain/entity/extended_info_entity.dart';
import 'package:crow/crow.dart';

class ExtendedAnimalInfoResponseEntity extends Entity {
  final String? name;
  final List<ExtendedInfoEntity>? result;

  const ExtendedAnimalInfoResponseEntity({
    this.name,
    this.result,
  });
}
