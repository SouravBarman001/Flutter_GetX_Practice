import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Page Two ${Get.arguments[0].toString()}',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/three');

          },
          child: const Text('Goto Page 3'),
        ),
      ),
    );
  }
}
