// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/widgets.dart';

abstract class Routes {
  static const String mainPage = '/mainPage';
  static const String home = '/home';
  static const String login = '/login';
}

@immutable
abstract class _Destinations {
  _Destinations(this.root)
      : assert(
          root.startsWith('/'),
          '_Destinations.root must begin with: `/`',
        );

  final String root;

  /// Concatenate a route with the root.
  String call(String route) {
    assert(route.startsWith('/'), 'Route must begin with: `/`');
    return root + route;
  }
}
