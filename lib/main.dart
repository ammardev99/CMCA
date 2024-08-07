import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cmca/modules/auth/login/view.dart';
import 'package:cmca/routes/routes.dart';
import 'package:cmca/utils/color.dart';
import 'package:cmca/widgets/formatting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.primary,
    statusBarBrightness: Brightness.light,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AmmarDev99',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      getPages: AppRoutes.appRoutes(),
      home: AnimatedSplashScreen(
          duration: 2000,
          splashTransition: SplashTransition.fadeTransition,
          centered: true,
          splashIconSize: MediaQuery.of(context).size.height * 0.8,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sizeBox(MediaQuery.of(context).size.height * 0.2),
              Image.asset(
                'assets/png/app_icon.png',
                fit: BoxFit.contain,
                height: 150,
              ),
              const Spacer(),
              const Text(
                'Powered By \n Malik Saqib Faraz & Ammar Shafiq',
                textAlign: TextAlign.center,
              )
            ],
          ),
          nextScreen: LoginPage()),
    );
  }
}
