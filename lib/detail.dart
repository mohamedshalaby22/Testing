// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_2/cart.dart';
import 'package:flutter_application_2/model.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  MakeupData makeupData;
  DetailPage({Key? key, required this.makeupData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  makeupData.image.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(makeupData.price.toString()),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              Get.to(CartPage());
            },
            child: Text('Add To Cart')),
      ),
    );
  }
}
