import 'package:code_challenge/features/home/domain/entity/animal_by_id_entity.dart';
import 'package:crow/crow.dart';

class AnimalByIdResponseEntity extends Entity {
  final String? name;
  final List<AnimalByIdEntity>? result;

  const AnimalByIdResponseEntity({
    this.name,
    this.result,
  });
}
