import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/routes/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page One'
        ),
      ),
      body:  Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(const PageTwo(),transition: Transition.zoom,duration: const Duration(seconds: 1),
            arguments: [
              'sourav',
            ]
            );
          },
          child: const Text('Goto Page 2'),
        ),
      ),
    );
  }
}
