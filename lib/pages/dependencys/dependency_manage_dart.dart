import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/dependencys/dependencyController.dart';
import 'package:getx/pages/dependencys/get_lazyPut.dart';

import 'get_put.dart';

class DependencyManagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("의존성 주입")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Getput"),
              onPressed: () {
                Get.to(() => GetPut(), binding: BindingsBuilder(() {
                  Get.put(DependencyController());
                }));
              },
            ),
            TextButton(
              child: Text("Get.lazyPut"),
              onPressed: () {
                Get.to(() => GetLazyPut(), binding: BindingsBuilder(() {
                  Get.lazyPut<DependencyController>(
                      () => DependencyController());
                }));
              },
            ),
            TextButton(
              child: Text("Get.putAsync"),
              onPressed: () {
                Get.to(() => GetPut(), binding: BindingsBuilder(() {
                  Get.putAsync<DependencyController>(() async {
                    await Future.delayed(Duration(seconds: 5));
                    return DependencyController();
                  });
                }));
              },
            ),
            TextButton(
              child: Text("Get.create"),
              onPressed: () {
                Get.to(() => GetPut(), binding: BindingsBuilder(() {
                  Get.create(() => DependencyController());
                }));
              },
            ),
          ],
        )));
  }
}
