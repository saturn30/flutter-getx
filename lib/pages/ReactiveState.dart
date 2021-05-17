import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountControllerWithReactive {
  RxInt count = 0.obs;
  void increase() {
    count++;
  }

  void setCount(number) {
    count(number);
  }
}

class ReactiveState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
        appBar: AppBar(title: Text('반응형 상태관리')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>
                Text("${Get.find<CountControllerWithReactive>().count.value}")),
            TextButton(
                onPressed: Get.find<CountControllerWithReactive>().increase,
                child: Text('increase')),
            TextButton(
                onPressed: () =>
                    Get.find<CountControllerWithReactive>().setCount(5),
                child: Text('5로 변경'))
          ],
        )));
  }
}
