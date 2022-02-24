import 'package:get/get.dart';

import 'package:electrify_facility/app/modules/forget_password/bindings/forget_password_binding.dart';
import 'package:electrify_facility/app/modules/forget_password/views/forget_password_view.dart';
import 'package:electrify_facility/app/modules/home/bindings/home_binding.dart';
import 'package:electrify_facility/app/modules/home/views/home_view.dart';
import 'package:electrify_facility/app/modules/house_hold/bindings/house_hold_binding.dart';
import 'package:electrify_facility/app/modules/house_hold/views/house_hold_view.dart';
import 'package:electrify_facility/app/modules/industrial/bindings/industrial_binding.dart';
import 'package:electrify_facility/app/modules/industrial/views/industrial_view.dart';
import 'package:electrify_facility/app/modules/login/bindings/login_binding.dart';
import 'package:electrify_facility/app/modules/login/views/login_view.dart';
import 'package:electrify_facility/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:electrify_facility/app/modules/sign_up/views/sign_up_view.dart';
import 'package:electrify_facility/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:electrify_facility/app/modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.INDUSTRIAL,
      page: () => IndustrialView(),
      binding: IndustrialBinding(),
    ),
    GetPage(
      name: _Paths.HOUSE_HOLD,
      page: () => HouseHoldView(),
      binding: HouseHoldBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
