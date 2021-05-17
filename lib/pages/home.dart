import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/SimpleState.dart';
import 'package:getx/pages/dependencys/dependency_manage_dart.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetx());
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              GetBuilder<CountControllerWithGetx>(
                  builder: (controller) => Text('${controller.count}')),
              TextButton(
                  child: Text('go First Page'),
                  onPressed: () {
                    Get.toNamed('/first');
                  }),
              TextButton(
                  child: Text('go Simple State Page'),
                  onPressed: () {
                    Get.toNamed('/simple_state');
                  }),
              TextButton(
                  child: Text('go Reactive State Page'),
                  onPressed: () {
                    Get.toNamed('/reactive_state');
                  }),
              TextButton(
                child: Text('go dependency'),
                onPressed: () {
                  Get.to(() => DependencyManagePage());
                },
              ),
              TextButton(
                child: Text('go binding'),
                onPressed: () {
                  Get.toNamed('/binding');
                },
              )
            ]))));
  }
}
