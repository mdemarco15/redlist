import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/auth/presentation/view/pages/auth_page.dart';
import 'package:code_challenge/features/home/presentation/view/pages/home_page.dart';
import 'package:code_challenge/features/main_screen/presentation/view/pages/main_page.dart';
import 'package:crow/crow.dart';

abstract class AppRouter {
  static const String initial = Routes.mainPage;

  static List<Page<dynamic>> get pages => _getPages();

  static List<Page<dynamic>> _getPages() {
    return <Page<dynamic>>[MainPage(), HomePage(), AuthPage()];
  }
}
