import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/house_hold_controller.dart';

class HouseHoldView extends GetView<HouseHoldController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HouseHoldController>(builder: (controller){
      return Scaffold(
        appBar: AppBar(
          title: Text('HouseHoldView'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
          ],
        ),
      );
    });
  }
}
