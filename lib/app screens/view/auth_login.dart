import 'package:cmca/controllers/controller_io.dart';
import 'package:cmca/widgets/contact_option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/config_io.dart';
import '../../widgets/widgets_io.dart';
import '../cmca.dart';

class AuthLogin extends StatefulWidget {
  const AuthLogin({super.key});

  @override
  State<AuthLogin> createState() => Auth_LoginState();
}

// ignore: camel_case_types
class Auth_LoginState extends State<AuthLogin> {
  final controller = Get.put(AuthLoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                sizeBox(50),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/png/app_icon.png'),
                ),
                sizeBox(20),
                // titleText('Login'),
                titleText('Wellcom in App'),
                sizeBox(10),
                infoText("Welcome to CMCA (Comprehensive Modular Construction App), your go-to solution for accurate, efficient, and streamlined construction project estimation. We are a forward-thinking technology company dedicated to revolutionizing the construction industry by providing tools that empower professionals at every stage of a building project. Our mission is to simplify and automate the complex processes of cost estimation, material planning, and project management, allowing our users to focus on what matters most—building great things."),
                // InputFormFieldApp(
                //   label: 'Email',
                //   hint: 'Enter your email',
                //   controller: controller.userEmail,
                //   inputType: TextInputType.emailAddress,
                //   validator: validEmail,
                // ),
                // sizeBox(15),
                // InputFormFieldApp(
                //   label: 'Password',
                //   hint: 'Enter your password',
                //   controller: controller.userPassword,
                //   inputType: TextInputType.text,
                //   validator: valid8digitPassword,
                // ),
                sizeBox(30),
                Obx(() {
                  return ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        AppColors.secondary,
                      ),
                      minimumSize: WidgetStateProperty.all(
                        const Size(double.infinity, 50),
                      ),
                    ),
                    onPressed: () => Get.offAll(const CMCA()),
                    // controller.isLoading.value
                    //     ? null // disable button while loading
                    //     : () async {
                    //       await controller.login();
                    //     },
                    child:
                        controller.isLoading.value
                            ? myLodaing()
                            // : headingText("Login", Colors.white),
                            : headingText("Let's Start", Colors.white),
                  );
                }),

                sizeBox(30),
                // menuOptionLink(context, Icons.link, 'txt', 'https:'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    infoText('Don’t have an account!', Colors.grey),
                    sizeBox(5),
                    InkWell(
                      onTap: () {
                        contactOpup(Get.context!);
                      },
                      child: infoText("Get Access", AppColors.secondary),
                    ),
                  ],
                ),
                sizeBox(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
