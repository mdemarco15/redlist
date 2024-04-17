import 'package:crow/crow.dart';
import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/auth/bindings/auth_bindings.dart';
import 'package:code_challenge/features/auth/presentation/view/screens/auth_screen.dart';

class AuthPage extends Page<dynamic> {
  AuthPage()
      : super(
          name: Routes.login,
          page: AuthScreen.new,
          binding: AuthBinding(),
        );
}
