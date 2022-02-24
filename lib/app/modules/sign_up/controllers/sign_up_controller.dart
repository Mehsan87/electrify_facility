import 'package:electrify_facility/app/modules/home/controllers/home_controller.dart';
import 'package:electrify_facility/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  var email = "";
  var password = "";
  var theMessage = "";

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  void checkSignUp() {
    final isValid = signUpFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    signUpFormKey.currentState!.save();
  }

  void signUp() async {
    HomeController.homeInstance.signUp(email, password);
  }

  void alreadyHaveAnAccount(){
    Get.offAllNamed(Routes.LOGIN);
  }
}
