import 'package:crow/crow.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:code_challenge/features/show_detail/presentation/view_models/show_detail_screen_view_model.dart';

class ShowDetailScreenBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ShowDetailScreenViewModel(Get.find<SharedPreferences>()),
    );
  }
}
