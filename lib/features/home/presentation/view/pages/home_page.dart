import 'package:crow/crow.dart';
import 'package:code_challenge/base/router/app_routes.dart';
import 'package:code_challenge/features/home/bindings/home_bindings.dart';
import 'package:code_challenge/features/home/presentation/view/screens/home_screen.dart';

class HomePage extends Page<dynamic> {
  HomePage()
      : super(
          name: Routes.home,
          page: HomeScreen.new,
          binding: HomeBinding(),
        );
}
