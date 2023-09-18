import 'package:flutter/material.dart';
import 'package:ironside_app/components/alerts/alert_component.dart';
import 'package:ironside_app/components/examples/examples_component.dart';
import 'package:ironside_app/components/http/http_component.dart';

class NavigationBottomComponent extends StatefulWidget {
  const NavigationBottomComponent({super.key});

  @override
  State<NavigationBottomComponent> createState() =>
      _NavigationBottomComponentState();
}

class _NavigationBottomComponentState extends State<NavigationBottomComponent> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Componentes',
          ),
          NavigationDestination(
            icon: Icon(Icons.business),
            label: 'Http',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.school_outlined),
            label: 'Alertas',
          ),
        ],
      ),
      body: <Widget>[
        const ExamplesComponent(),
        const HttpComponent(),
        const AlertComponent(),
      ][currentPageIndex],
    );
  }
}
