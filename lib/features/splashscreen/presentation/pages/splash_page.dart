import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/splashscreen/binding/splash_binding.dart';
import 'package:code_challenge/features/splashscreen/presentation/view/screen/splash_screen.dart';
import 'package:crow/crow.dart';

class SplashPage extends Page {
  SplashPage()
      : super(
          name: Routes.splash,
          page: SplashScreen.new,
          binding: SplashBinding(),
        );
}
