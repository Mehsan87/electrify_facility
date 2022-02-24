import 'package:electrify_facility/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class WelcomeController extends GetxController {

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  int tabIndex = 0;
  void changeIndex(int index){
    tabIndex = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void signOut() => HomeController.homeInstance.signOut();
}
