import 'package:flutter_application_2/model.dart';
import 'package:flutter_application_2/repository.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  var isLoading = false.obs;
  List productsList = [].obs;
  FetcApiData fetcApiData = FetcApiData();

  ProductsController() {
    getAllProducts();
  }
  getAllProducts() async {
    isLoading(true);
    final myList = await fetcApiData.setProductos();
    productsList = myList!.map((e) => MakeupData.fromJson(e)).toList();
    isLoading(false);
  }
}
