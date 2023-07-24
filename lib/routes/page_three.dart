import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Page Three'
        ),
      ),
      body:  Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
            Get.back();

          },
          child: const Text('Goto Page 1'),
        ),
      ),
    );
  }
}
