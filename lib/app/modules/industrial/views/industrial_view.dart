import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/industrial_controller.dart';

class IndustrialView extends GetView<IndustrialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndustrialView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'IndustrialView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
