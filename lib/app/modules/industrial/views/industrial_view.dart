import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/industrial_controller.dart';

class IndustrialView extends GetView<IndustrialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Get.snackbar("Installation", "Installation Clicked", snackPosition: SnackPosition.BOTTOM);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/_bgImLogin.png"),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        "Installation",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 30,
                      child: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward),),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.snackbar("Supply", "Supply Clicked", snackPosition: SnackPosition.BOTTOM);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/_bgImLogin.png"),
                      fit: BoxFit.fill,
                    ),
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        "Supply",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 30,
                      child: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
