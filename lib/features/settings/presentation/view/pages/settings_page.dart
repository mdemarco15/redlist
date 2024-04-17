import 'package:crow/crow.dart';
import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/settings/bindings/settings_screen_binding.dart';
import 'package:code_challenge/features/settings/presentation/view/screens/settings_screen.dart';

class SettingsPage extends Page<dynamic> {
  SettingsPage() : super(name: Routes.settings, page: SettingsScreen.new, binding: SettingsScreenBinding());
}
