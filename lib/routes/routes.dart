import 'package:cmca/modules/estimates/design_estimate/view.dart';
import 'package:cmca/modules/estimates/electrical_estimate/view.dart';
import 'package:cmca/modules/estimates/finishing_estimate/view.dart';
import 'package:cmca/modules/estimates/foundation_estimate/view.dart';
import 'package:cmca/modules/estimates/furniture_estimate/view.dart';
import 'package:cmca/modules/estimates/masonry_estimate/view.dart';
import 'package:cmca/modules/estimates/plumbing_estimate/view.dart';
import 'package:cmca/modules/estimates/roof_estimate/view.dart';
import 'package:cmca/routes/routes_name.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        // GetPage(name: RouteName.aboutus, page: () => AboutUsPage()),
        GetPage(name: EstimateForm.designEstimate, page: () => DesignEstimatePage()),
        GetPage(name: EstimateForm.foundationEstimate, page: () => FoundationEstimatePage()),
        GetPage(name: EstimateForm.masonryEstimate, page: () => MasonryEstimatePage()),
        GetPage(name: EstimateForm.finishingEstimate, page: () => FinishingEstimatePage()),
        GetPage(name: EstimateForm.roofEstimate, page: () => RoofEstimatePage()),
        GetPage(name: EstimateForm.furnitureEstimate, page: () => FurnitureEstimatePage()),
        GetPage(name: EstimateForm.plumbingEstimate, page: () => PlumbingEstimatePage()),
        GetPage(name: EstimateForm.electricalEstimate, page: () => ElectricalEstimatePage()),
      ];
}
