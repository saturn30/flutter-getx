import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountControllerWithGetx extends GetxController {
  int count = 0;
  void increase(id) {
    count++;
    update([id]);
  }
}

class SimpleState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('단순 상태 관리')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountControllerWithGetx>(
                id: '1',
                builder: (controller) {
                  return Text('${controller.count}');
                }),
            GetBuilder<CountControllerWithGetx>(builder: (controller) {
              return Text('${controller.count}');
            }),
            GetBuilder<CountControllerWithGetx>(builder: (controller) {
              return TextButton(
                  onPressed: () => controller.increase('2'),
                  child: Text("increase1 with GetBuilder!"));
            }),
            TextButton(
                onPressed: () =>
                    Get.find<CountControllerWithGetx>().increase('1'),
                child: Text('increase2!'))
          ],
        )));
  }
}
