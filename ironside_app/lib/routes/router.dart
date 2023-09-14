import 'package:flutter/material.dart';

import '../pages/home/home_screen.dart';

class AppRouter {
  static String getDefaultRoute() => '/home';
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/home': (context) => const HomeScreen(),
    };
  }
}
