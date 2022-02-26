import 'package:electrify_facility/app/modules/house_hold/views/house_hold_view.dart';
import 'package:electrify_facility/app/modules/industrial/views/industrial_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {


  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(builder: (controller){
      return Scaffold(
        appBar: AppBar(
          title: Text('Electrify'),
          backgroundColor: Colors.green,
          centerTitle: true,
          leading: Builder(
               builder: (BuildContext context) {
                 return IconButton(
                   icon: const Icon(Icons.menu),
                   onPressed: () { Scaffold.of(context).openDrawer(); },
                   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                 );
               },
             ),
          actions: [
            IconButton(
              onPressed: () {
                controller.signOut();
              },
              icon: Icon(Icons.logout),
            ),
            IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
        body: IndexedStack(
          index: controller.tabIndex,
          children:[
            IndustrialView(),
            HouseHoldView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: true,
          onTap: controller.changeIndex,
          currentIndex: controller.tabIndex,
          backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
          unselectedItemColor: Colors.white.withOpacity(0.5),
          selectedItemColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.add_business_rounded),
              label: "Industrial",
              tooltip: "Only For Industrial",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Household",
              tooltip: "Only For Household",
            ),
          ],
        ),
      );
    });
  }
}
