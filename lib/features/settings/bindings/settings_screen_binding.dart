import 'package:crow/crow.dart';
import 'package:get/get.dart';
import 'package:code_challenge/features/settings/presentation/view_models/settings_view_model.dart';

class SettingsScreenBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SettingsScreenViewModel(),
    );
  }
}
