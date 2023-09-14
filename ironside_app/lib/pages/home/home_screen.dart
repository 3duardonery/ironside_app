import 'package:flutter/material.dart';
import 'package:ironside_app/components/navigation/navigation_comonent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NavigationExample(),
    );
  }
}
