import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/dependencys/dependencyController.dart';

class GetLazyPut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: TextButton(
            child: Text('hi'),
            onPressed: () {
              Get.find<DependencyController>().increase();
            },
          ),
        ));
  }
}
