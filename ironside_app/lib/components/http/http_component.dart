import 'package:flutter/material.dart';

class HttpComponent extends StatefulWidget {
  const HttpComponent({super.key});

  @override
  State<HttpComponent> createState() => _HttpComponentState();
}

class _HttpComponentState extends State<HttpComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: const Text('Page 2'),
    );
  }
}
