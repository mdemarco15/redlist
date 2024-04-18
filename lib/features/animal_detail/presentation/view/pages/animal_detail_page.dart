import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/animal_detail/bindings/animal_detail_bindings.dart';
import 'package:code_challenge/features/animal_detail/presentation/view/screens/animal_detail_screen.dart';
import 'package:crow/crow.dart';
import 'package:get/get.dart';

class AnimalDetailPage extends Page {
  AnimalDetailPage()
      : super(
          name: Routes.animalDetail,
          page: AnimalDetailScreen.new,
          binding: AnimalDetailBinding(),
          transition: Transition.noTransition,
        );
}
