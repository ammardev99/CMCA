import 'package:cmca/modules/cmca.dart';
import 'package:cmca/config/utils/color.dart';
import 'package:cmca/config/utils/validator.dart';
import 'package:cmca/config/utils/formatting.dart';
import 'package:cmca/widgets/input_form_field.dart';
import 'package:cmca/widgets/loading_circle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'logic.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final logic = Get.put(LoginLogic());
  final state = Get.find<LoginLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20),
          child: Form(
            key: logic.formKey,
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
                titleText('Login'),
                sizeBox(10),
                InputFormFieldApp(
                  label: 'Email',
                  hint: 'Enter your email',
                  controller: state.userEmail,
                  inputType: TextInputType.emailAddress,
                  validator: validEmail,
                ),
                sizeBox(15),
                InputFormFieldApp(
                  label: 'Password',
                  hint: 'Enter your password',
                  controller: state.userPassword,
                  inputType: TextInputType.text,
                  validator: valid8digitPassword,
                ),
                sizeBox(30),
                Obx(() {
                  return ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(AppColors.secondary),
                      minimumSize: WidgetStateProperty.all(
                          const Size(double.infinity, 50)),
                    ),
                    onPressed: () async {
                      // await logic.login();
                      Get.offAll(const CMCA());
                    },
                    child: state.isLoading.value
                        ? myLodaing()
                        : headingText("Login", Colors.white),
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
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: AppColors.white,
                              title: const Text(
                                'Let\'s Go!',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600),
                              ),
                              content: const Text(
                                  'Contact the founder to get access.'),
                              actions: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  AppColors.primary)),
                                      onPressed: () async {
                                        // ignore: deprecated_member_use
                                        if (await canLaunch(
                                            'https://wa.me/message/A4MULE5OOCMXF1')) {
                                          // ignore: deprecated_member_use
                                          await launch(
                                              'https://wa.me/message/A4MULE5OOCMXF1');
                                        } else {
                                          throw 'Could not launch';
                                        }
                                        // ignore: use_build_context_synchronously
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Developer',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    TextButton(
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  AppColors.secondary)),
                                      onPressed: () async {
                                        // ignore: deprecated_member_use
                                        if (await canLaunch(
                                            'https://wa.me/message/GR6WORCERRI3I1')) {
                                          // ignore: deprecated_member_use
                                          await launch(
                                              'https://wa.me/message/GR6WORCERRI3I1');
                                        } else {
                                          throw 'Could not launch';
                                        }
                                        // ignore: use_build_context_synchronously
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Founder',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: infoText("Get Access", AppColors.secondary),
                    )
                  ],
                ),
                sizeBox(30)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
