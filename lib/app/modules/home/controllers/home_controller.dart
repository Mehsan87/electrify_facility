import 'package:electrify_facility/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController homeInstance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    _user = Rx<User?>(firebaseAuth.currentUser);
    _user.bindStream(firebaseAuth.userChanges());
    ever(_user, handleUserAuthStateChanged);
    super.onReady();
  }

  @override
  void onClose() {}

  void handleUserAuthStateChanged(User? user) {
    Future.delayed((3.seconds), () {
      if (user != null) {
        Get.offAllNamed(Routes.WELCOME, arguments: firebaseAuth.currentUser);
      } else {
        Get.offAllNamed(Routes.LOGIN);
      }
    });
  }

  void signIn(String email, password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Login",
        "${e.message}",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void signUp(String email, password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Sign Up",
        "${e.message}",
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      print(e);
    }
  }

  void signOut() async {
    await firebaseAuth.signOut();
  }
}
