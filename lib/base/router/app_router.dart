import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/auth/presentation/view/pages/auth_page.dart';
import 'package:code_challenge/features/home/presentation/view/pages/home_page.dart';
import 'package:code_challenge/features/splashscreen/presentation/pages/splash_page.dart';
import 'package:crow/crow.dart';

abstract class AppRouter {
  static const String initial = Routes.splash;

  static List<Page<dynamic>> get pages => _getPages();

  static List<Page<dynamic>> _getPages() {
    return <Page<dynamic>>[SplashPage(), HomePage(), AuthPage()];
  }
}
