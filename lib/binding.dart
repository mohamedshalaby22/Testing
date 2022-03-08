import 'package:flutter_application_2/controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() =>ProductsController());
  }

}