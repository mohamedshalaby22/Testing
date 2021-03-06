import 'package:flutter/material.dart';
import 'package:flutter_application_2/binding.dart';
import 'package:flutter_application_2/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      
      home: HomePage(),
    );
  }
}

