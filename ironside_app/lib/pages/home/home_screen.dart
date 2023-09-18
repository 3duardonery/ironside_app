import 'package:flutter/material.dart';
import 'package:ironside_app/components/drawer/drawer_component.dart';
import 'package:ironside_app/components/navigation/navigation_comonent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  String getUsername() {
    return 'Eduardo Nery';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NavigationBottomComponent(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('App'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.account_circle),
                Text(getUsername()),
              ],
            ),
          ),
        ],
      ),
      drawer: const DrawerComponent(),
    );
  }
}
