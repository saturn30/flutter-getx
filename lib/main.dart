import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/pages/FirstPage.dart';
import 'package:getx/pages/PrintArguments.dart';
import 'package:getx/pages/PrintParameter.dart';
import 'package:getx/pages/ReactiveState.dart';
import 'package:getx/pages/SecondPage.dart';
import 'package:getx/pages/SimpleState.dart';
import 'package:getx/pages/home.dart';

import 'pages/Binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home: Home(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/first', page: () => FirstPage()),
        GetPage(name: '/second', page: () => SecondPage()),
        GetPage(name: '/print_arguments', page: () => PrintArguments()),
        GetPage(name: '/print_parameters/:id', page: () => PrintParameters()),
        GetPage(name: '/simple_state', page: () => SimpleState()),
        GetPage(name: '/reactive_state', page: () => ReactiveState()),
        GetPage(
            name: '/binding',
            page: () => BindingPage(),
            binding: BindingsBuilder(() {
              Get.put(CountControllerWithGetx());
            }))
      ],
    );
  }
}
