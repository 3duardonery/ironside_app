import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          Text('Início'),
          Divider(
            height: 5,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Colors.black,
          ),
          Text('Tela 2'),
        ],
      ),
    );
  }
}
