import 'package:electrify_facility/string_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            left: size.width * 0.05,
            top: size.height * 0.15,
            right: size.width * 0.05,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: controller.loginFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: <Widget>[
                  logoImageLogin(size),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    StringConstants.COMPANYNAME,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreenAccent),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  buildTextFormFieldEmail(),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  buildTextFormFieldPassword(),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  buildConstrainedBoxLoginBtn(context),
                  SizedBox(
                    height: size.height * 0.003,
                  ),
                  buildConstrainedBoxFgtPassBtn(context),
                  Divider(
                    thickness: 0.4,
                    color: Colors.cyanAccent,
                  ),
                  buildConstrainedBoxCreateAccBtn(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ConstrainedBox buildConstrainedBoxCreateAccBtn(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: context.width),
      child: ElevatedButton(
        onPressed: () {
          controller.createAnAccount();
        },
        child: Text("Create an Account"),
        style: ElevatedButton.styleFrom(primary: Colors.green),
      ),
    );
  }

  ConstrainedBox buildConstrainedBoxFgtPassBtn(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: context.width),
      child: TextButton(
        onPressed: () {
          print("Forget Password?");
        },
        child: Text("Forget Password?"),
      ),
    );
  }

  ConstrainedBox buildConstrainedBoxLoginBtn(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: context.width),
      child: ElevatedButton(
        onPressed: () {
          controller.checkLogin();
          controller.signIn();
        },
        child: Text("Login"),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
      ),
    );
  }

  TextFormField buildTextFormFieldPassword() {
    return TextFormField(
      controller: controller.passwordController,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: "Password",
        prefixIcon: Icon(Icons.password),
        hintText: "Password",
        hintStyle: TextStyle(
          color: Colors.blueAccent,
        ),
      ),
      onSaved: (value) {
        controller.password = value!;
      },
      validator: (value) {
        return controller.validatePassword(value!);
      },
    );
  }

  TextFormField buildTextFormFieldEmail() {
    return TextFormField(
      controller: controller.emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: "Email",
        prefixIcon: Icon(Icons.email),
        hintText: "Email",
        hintStyle: TextStyle(
          color: Colors.blueAccent,
        ),
      ),
      onSaved: (value) {
        controller.email = value!;
      },
      validator: (value) {
        return controller.validateEmail(value!);
      },
    );
  }

  Container logoImageLogin(Size size) {
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.10,
      child: Image.asset(
        "assets/images/bgImLogin.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
