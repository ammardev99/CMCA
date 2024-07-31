import 'package:cmca/utils/images.dart';
import 'package:flutter/material.dart';

class Estimate {
  int id;
  String title;
  String icon;
  Color color;
  Estimate({
    required this.id,
    required this.title,
    required this.icon,
    required this.color,
  });
}

final estimateOption = [
  Estimate(id: 0,title: "Design Cost", icon: EstimateIcons.design, color: Colors.blue),
  Estimate(id: 1,title: "Foundation Cost", icon: EstimateIcons.foundation, color: const Color.fromARGB(255, 108, 70, 65)),
  Estimate(id: 2,title: "Masonry Cost", icon: EstimateIcons.masonry, color: const Color.fromARGB(255, 120, 117, 117)),
  Estimate(id: 3,title: "Finishing Cost", icon: EstimateIcons.none , color: const Color.fromARGB(255, 32, 154, 140)),
  Estimate(id: 4,title: "Roof Cost", icon: EstimateIcons.none, color: const Color.fromARGB(255, 197, 197, 197)),
  Estimate(id: 5,title: "Steel Cost", icon: EstimateIcons.none, color: const Color.fromARGB(255, 101, 125, 120)),
  Estimate(id: 6,title: "Furniture Cost", icon: EstimateIcons.furniture, color: const Color.fromARGB(255, 93, 64, 64)),
  Estimate(id: 7,title: "Plumbing Cost", icon: EstimateIcons.plumbing, color: const Color.fromARGB(255, 56, 74, 116)),
  Estimate(id: 8,title: "Mechanical Cost", icon: EstimateIcons.none, color: const Color.fromARGB(255, 125, 109, 109)),
  Estimate(id: 9,title: "Electrical Cost", icon: EstimateIcons.electrical, color: const Color.fromARGB(255, 134, 134, 82)),
];
