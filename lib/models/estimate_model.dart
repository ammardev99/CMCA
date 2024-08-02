import 'package:cmca/routes/routes_name.dart';
import 'package:cmca/utils/images.dart';
import 'package:flutter/material.dart';

class Estimate {
  int id;
  String title;
  String icon;
  Color color;
  String route;
  Estimate({
    required this.id,
    required this.title,
    required this.icon,
    required this.color,
    required this.route,

  });
}

final estimateOption = [
  Estimate(id: 0,title: "Design Cost", icon: EstimateIcons.design, color: Colors.blue, route:   EstimateForm.designEstimate),
  Estimate(id: 1,title: "Foundation Cost", icon: EstimateIcons.foundation, color: const Color.fromARGB(255, 108, 70, 65), route:   EstimateForm.foundationEstimate),
  Estimate(id: 2,title: "Masonry Cost", icon: EstimateIcons.masonry, color: const Color.fromARGB(255, 120, 117, 117), route:   EstimateForm.masonryEstimate),
  Estimate(id: 3,title: "Finishing Cost", icon: EstimateIcons.finishing , color: const Color.fromARGB(255, 32, 154, 140), route:   EstimateForm.finishingEstimate),
  Estimate(id: 4,title: "Roof Cost", icon: EstimateIcons.roof, color: const Color.fromARGB(255, 197, 197, 197), route:   EstimateForm.roofEstimate),
  Estimate(id: 5,title: "Furniture Cost", icon: EstimateIcons.furniture, color: const Color.fromARGB(255, 93, 64, 64), route:   EstimateForm.furnitureEstimate),
  Estimate(id: 6,title: "Plumbing Cost", icon: EstimateIcons.plumbing, color: const Color.fromARGB(255, 56, 74, 116), route:   EstimateForm.plumbingEstimate),
  Estimate(id: 7,title: "Electrical Cost", icon: EstimateIcons.electrical, color: const Color.fromARGB(255, 134, 134, 82), route:   EstimateForm.electricalEstimate),
];
