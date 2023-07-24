
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GetX Utilities'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
               child: InkWell(
                 onTap: (){
                   Get.defaultDialog(
                     titlePadding: const EdgeInsets.all(14),
                     title: 'This is a GetX dialog',
                      middleText: 'Hello, This is sourav',
                     confirm:  TextButton(onPressed: (){}, child: const Text('Yes')),
                       cancel:  TextButton(onPressed: (){
                         Get.back();
                       }, child: const Text('No'))

                   );
                 },
                 child: Container(
                   alignment: Alignment.center,
                   padding: const EdgeInsets.all(10),
                  // color: Colors.cyan,
                   height: 40,
                   width: double.infinity,
                   child: const Text('GetX Dialog'),
              ),
               ),
            ),
            Card(
              child: InkWell(
                onTap: (){
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.add),
                            title: const Text('Add person'),
                            trailing: InkWell(
                                 onTap: (){
                                   Get.changeTheme(ThemeData.light());
                                 },
                                child: const Icon(Icons.light_mode)),
                          ),
                          ListTile(
                            leading: const Icon(Icons.delete_forever),
                            title: const Text('Delete person'),
                            trailing: InkWell(
                                onTap: (){
                                  Get.changeTheme(ThemeData.dark());

                                },
                                child: const Icon(Icons.dark_mode)),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Container(
                  color: Colors.cyan.shade200,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  // color: Colors.cyan,
                  height: 40,
                  width: double.infinity,
                  child: const Text('GetX BottomSheet'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
