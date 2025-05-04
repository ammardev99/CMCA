import 'package:cmca/app%20screens/about_us.dart';
import 'package:cmca/config/routes/routes_name.dart';
import 'package:cmca/app%20screens/view/estimations/design_cost.dart';
import 'package:cmca/app%20screens/view/estimations/plumbing_cost.dart';
import 'package:get/get.dart';

import '../../app screens/view/auth_login.dart';
import '../../app screens/view/estimations/electrical_cost.dart';
import '../../app screens/view/estimations/finishing_cost.dart';
import '../../app screens/view/estimations/foundation_cost.dart';
import '../../app screens/view/estimations/furniture_cost.dart';
import '../../app screens/view/estimations/masonry_cost.dart';
import '../../app screens/view/estimations/roof_cost.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(name: RouteName.authlogin, page: () => AuthLogin()),
    GetPage(name: RouteName.aboutUs, page: () => const AboutUs()),
    GetPage(name: AppRouts.designCost, page: () => const DesignCost()),
    GetPage(name: AppRouts.foundationCost, page: () => FoundationCost()),
    GetPage(name: AppRouts.masonryCost, page: () => MasonryCost()),
    GetPage(name: AppRouts.roofCost, page: () => RoofCost()),
    GetPage(name: AppRouts.electricalCost, page: () => ElectricalCost()),
    GetPage(name: AppRouts.plumbingCost, page: () => PlumbingCost()),
    GetPage(name: AppRouts.furnitureCost, page: () => FurnitureCost()),
    GetPage(name: AppRouts.finishingCost, page: () => FinishingCost()),
  ];
}
