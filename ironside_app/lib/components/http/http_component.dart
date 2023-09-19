import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;

class HttpComponent extends StatefulWidget {
  const HttpComponent({super.key});

  @override
  State<HttpComponent> createState() => _HttpComponentState();
}

class _HttpComponentState extends State<HttpComponent> {
  String albuns = '';
  TextEditingController controller = TextEditingController();
  TextEditingController idController = TextEditingController(text: '1');

  Future<http.Response> fetchAlbumById(String id) {
    return http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'));
  }

  getAlbuns(String id) async {
    await fetchAlbumById(id).then((value) => {
          albuns = value.body,
          developer.log(albuns),
          controller.text = albuns,
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            width: 250,
            child: TextField(
              controller: idController,
              obscureText: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          FilledButton(
            onPressed: () {
              getAlbuns(idController.text);
            },
            child: const Text('Download Album'),
          ),
          SizedBox(
            width: 250,
            child: TextField(
              controller: controller,
              minLines: 10,
              maxLines: 10,
              obscureText: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
