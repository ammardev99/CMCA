import 'package:cmca/config/routes/routes_name.dart';
import 'package:cmca/config/utils/estimate_icons.dart';
import 'package:flutter/material.dart';

class ModuleOption{
  int id;
  String title;
  String icon;
  Color color;
  String route;
  ModuleOption({required this.id,required this.title,required this.icon,required this.color,required this.route,});
}

final estimateOption = [
  // DFMREPFF this show the arrangement of list
  ModuleOption(id: 0,title: "Design Cost X", icon: EstimateIcons.design, color: const Color.fromARGB(255, 245, 37, 37), route:   EstimateForm.designEstimate),
  ModuleOption(id: 0,title: "Design Cost", icon: EstimateIcons.design, color: const Color(0xFF2597F5), route:   EstimateForm.designCost),
  // ModuleOption(id: 1,title: "Foundation Cost", icon: EstimateIcons.foundation, color: const Color(0xFF6C4641), route:   EstimateForm.foundationEstimate),
  // ModuleOption(id: 2,title: "Masonry Cost", icon: EstimateIcons.masonry, color: const Color(0xFF787575), route:   EstimateForm.masonryEstimate),
  // ModuleOption(id: 3,title: "Roof Cost", icon: EstimateIcons.roof, color: const Color(0xFFC5C5C5), route:   EstimateForm.roofEstimate),
  // ModuleOption(id: 4,title: "Electrical Cost", icon: EstimateIcons.electrical, color: const Color(0xFF868652), route:   EstimateForm.electricalEstimate),
  // ModuleOption(id: 5,title: "Plumbing Cost", icon: EstimateIcons.plumbing, color: const Color(0xFF384A74), route:   EstimateForm.plumbingEstimate),
  // ModuleOption(id: 6,title: "Finishing Cost", icon: EstimateIcons.finishing , color: const Color(0xFF209A8C), route:   EstimateForm.finishingEstimate),
  // ModuleOption(id: 7,title: "Furniture Cost", icon: EstimateIcons.furniture, color: const Color(0xFF5D4040), route:   EstimateForm.furnitureEstimate),
];
