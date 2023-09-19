import 'package:flutter/material.dart';
import 'package:ironside_app/pages/details/details_screen.dart';

import '../pages/home/home_screen.dart';

class AppRouter {
  static String getDefaultRoute() => '/home';
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/home': (context) => const HomeScreen(),
      '/details': (context) => const DetailsScreen(),
    };
  }
}
