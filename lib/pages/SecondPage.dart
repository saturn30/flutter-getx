import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Second')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                  child: Text('go Back'),
                  onPressed: () {
                    Get.back();
                  }),
              TextButton(
                  child: Text('go Home'),
                  onPressed: () {
                    Get.offAllNamed('/');
                  }),
              TextButton(
                  child: Text('go arguments'),
                  onPressed: () {
                    Get.toNamed('/print_arguments', arguments: 'hi');
                  }),
              TextButton(
                  child: Text('go parameters'),
                  onPressed: () {
                    Get.toNamed('/print_parameters/123?name=kim');
                  }),
            ]));
  }
}
