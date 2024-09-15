class ModuleInfoClass{
  int id;
  String animation;
  String title;
  String heading;
  String description;
  String learnMore;
  ModuleInfoClass(
    this.id,this.animation, this.title, this.heading, this.description, this.learnMore);
}

List<ModuleInfoClass> moduleInfo = [
  // DFMREPFF this show the arrangement of list
  ModuleInfoClass(0,'icon_design', 'Designing', 'Design Estimate', 'Detailed estimate for design phase', 'link'),
  ModuleInfoClass(1,'icon_foundation', 'Foundation', 'Foundation Estimate', 'Estimate for foundation and groundwork', 'link'),
  ModuleInfoClass(2,'icon_masonry', 'Masonry', 'Masonry Estimate', 'Cost estimate for masonry work', 'link'),
  ModuleInfoClass(3,'icon_roof', 'Roof', 'Roof Estimate', 'Estimate for roof installation and materials', 'link'),
  ModuleInfoClass(4,'icon_electrical', 'Electrical', 'Electrical Estimate', 'Estimate for electrical systems and wiring', 'link'),
  ModuleInfoClass(5,'icon_plumbing', 'Plumbing', 'Plumbing Estimate', 'Estimate for plumbing systems', 'link'),
  ModuleInfoClass(6,'icon_finishing', 'Finishing', 'Finishing Estimate', 'Estimate for finishing materials and labor', 'link'),
  ModuleInfoClass(9,'icon_furniture', 'Furniture', 'Furniture Estimate', 'Cost estimate for furniture and fittings', 'link'),
];
