List<String> designClass = [
  "Economical",
  "Medium",
  "High-end",
  "Luxury",
];

double getDesignCost(String buildtype) {
  switch (buildtype) {
    case 'Luxury':
      return 350;
    case 'High-end':
      return 200;
    case 'Medium':
      return 130;
    case 'Economical':
      return 70;
    default:
      return 1;
  }
}
