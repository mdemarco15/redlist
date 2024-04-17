import 'package:crow/crow.dart';
import 'package:code_challenge/features/home/domain/entity/show_response_entity.dart';

abstract class HomeRepository extends Repository {
  Future<List<ShowResponseEntity>?> getShows();
}
