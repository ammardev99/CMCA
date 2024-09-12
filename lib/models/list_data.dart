List<String> buildingClass = [
  "Luxury",
  "High-end",
  "Medium",
  "Economical",
];

double getDesignCost(String buildtype) {
  switch (buildtype) {
    case 'Luxury':
      return 350.0;
    case 'High-end':
      return 200.0;
    case 'Medium':
      return 130.0;
    case 'Economical':
      return 70.0;
    default:
      return 1.0;
  }
}
