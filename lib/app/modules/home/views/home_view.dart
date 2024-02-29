import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Obx(
                      () => Text("${controller.returnEmoji()}",
                          style: const TextStyle(fontSize: 100)),
                    )),
                ElevatedButton(
                    onPressed: () => controller.currIndex(),
                    child: Text('Press_me'))
              ],
            ),
          ],
        ));
  }
}
