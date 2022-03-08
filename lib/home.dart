import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller.dart';
import 'package:flutter_application_2/detail.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductsController controller = Get.find<ProductsController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Makeups',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: [
                Expanded(
                  child: GridView.builder(
                      itemCount: controller.productsList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20),
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Get.to(DetailPage(
                                  makeupData: controller.productsList[index]));
                            },
                            child: Container(
                              
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  controller.productsList[index].image
                                      .toString(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )),
                )
              ],
            );
          }
        }),
      ),
    );
  }
}
