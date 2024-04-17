import 'package:crow/crow.dart';
import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/home/bindings/home_bindings.dart';
import 'package:code_challenge/features/main_screen/bindings/main_screen_binding.dart';
import 'package:code_challenge/features/main_screen/presentation/view/screens/main_screen.dart';
import 'package:code_challenge/features/settings/bindings/settings_screen_binding.dart';

class MainPage extends Page<dynamic> {
  MainPage()
      : super(
          name: Routes.mainPage,
          page: MainScreen.new,
          bindings: [MainScreenBinding(), HomeBinding(), SettingsScreenBinding()],
        );
}
