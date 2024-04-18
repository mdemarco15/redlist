import 'package:code_challenge/features/animal_detail/bindings/animal_detail_bindings.dart';
import 'package:code_challenge/features/animal_detail/presentation/view/screens/animal_detail_screen.dart';
import 'package:code_challenge/features/auth/bindings/auth_bindings.dart';
import 'package:code_challenge/features/auth/presentation/view/screens/auth_screen.dart';
import 'package:code_challenge/features/home/bindings/home_bindings.dart';
import 'package:code_challenge/features/home/presentation/view/screens/home_screen.dart';
import 'package:code_challenge/features/splashscreen/binding/splash_binding.dart';
import 'package:code_challenge/features/splashscreen/presentation/view/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          name: 'splash',
          path: '/',
          builder: (context, state) {
            SplashBinding().dependencies();
            return SplashScreen();
          }),
      GoRoute(
          name: 'login',
          path: '/login',
          builder: (context, state) {
            AuthBinding().dependencies();
            return AuthScreen();
          }
      ),
      GoRoute(
        name: 'home',
        path: '/home',
        builder: (context, state) {
          HomeBinding().dependencies();
          return HomeScreen();
        },
        routes: [
          GoRoute(
            name: 'detail',
            path: 'detail',
            builder: (context, state) {
              AnimalDetailBinding().dependencies();
              return AnimalDetailScreen();
            },
          ),
        ],
      )
    ],
  );
}
