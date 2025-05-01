import 'package:cmca/modules/about_us.dart';
import 'package:cmca/modules/auth/login/view.dart';
import 'package:cmca/view/design_estimate/view.dart';
import 'package:cmca/config/routes/routes_name.dart';
import 'package:cmca/view/estimations/design_cost.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RouteName.login, page: () => LoginPage()),
        GetPage(name: RouteName.aboutUs, page: () => const AboutUs()),
        GetPage(name: EstimateForm.designEstimate, page: () => DesignEstimatePage()),
        GetPage(name: EstimateForm.designCost, page: () => const DesignCost()),
        // GetPage(name: EstimateForm.foundationEstimate, page: () => FoundationEstimatePage()),
        // GetPage(name: EstimateForm.masonryEstimate, page: () => MasonryEstimatePage()),
        // GetPage(name: EstimateForm.finishingEstimate, page: () => FinishingEstimatePage()),
        // GetPage(name: EstimateForm.roofEstimate, page: () => RoofEstimatePage()),
        // GetPage(name: EstimateForm.furnitureEstimate, page: () => FurnitureEstimatePage()),
        // GetPage(name: EstimateForm.plumbingEstimate, page: () => PlumbingEstimatePage()),
        // GetPage(name: EstimateForm.electricalEstimate, page: () => ElectricalEstimatePage()),
      ];
}
