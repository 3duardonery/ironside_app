import 'package:flutter/material.dart';
import 'package:ironside_app/components/card/card_component.dart';
import 'package:ironside_app/components/switch/switch_component.dart';

class ExamplesComponent extends StatelessWidget {
  const ExamplesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          const Badge(
            label: Text(
              '+10',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
            textColor: Colors.black,
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text('Notificações'),
            ),
          ),
          const CardComponent(),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          const SizedBox(
            width: 250,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite sua senha',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.tonal(
                  onPressed: () {}, child: const Text('Filled Tonal')),
              OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
              TextButton(onPressed: () {}, child: const Text('Text')),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10),
          ),
          const SwitchComponent(),
        ],
      ),
    );
  }
}
