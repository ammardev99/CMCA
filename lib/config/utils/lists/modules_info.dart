class ModuleInfoClass{
  int id;
  String animation;
  String title;
  String heading;
  String description;
  String link;
  ModuleInfoClass(
    this.id,this.animation, this.title, this.heading, this.description, this.link);
}

List<ModuleInfoClass> moduleInfo = [
  // DFMREPFF this show the arrangement of list
  ModuleInfoClass(0,'assets/animations/design.json', 'Designing', 'Design Estimate', 'DesignEstimate is a comprehensive mobile app module designed to streamline design estimation, quotation, and visualization. This module empowers designers, architects, and engineers to work efficiently, accurately, and creatively.', 'link'),
  ModuleInfoClass(1,'assets/animations/drawer.json', 'Foundation', 'Foundation Estimate', 'Foundation Estimate is a module designed to help civil engineers, architects, contractors, and construction professionals estimate the cost and materials required for building foundations. It streamlines the process of calculating the quantities and costs associated with different foundation types, ensuring accurate budgeting and planning for construction projects.', 'link'),
  ModuleInfoClass(2,'assets/animations/masonry.json', 'Masonry', 'Masonry Estimate', 'Masonry  is a comprehensive mobile app module designed to streamline masonry work management, estimation, and execution. This module empowers masonry professionals to work efficiently, accurately, and profitably.', 'link'),
  ModuleInfoClass(3,'assets/animations/roof.json', 'Roof', 'Roof Estimate', 'RCC Roof Estimator is a comprehensive mobile app module designed to streamline RCC roof estimation, quotation, and construction. This module empowers construction professionals to work efficiently, accurately, and profitably.', 'link'),
  ModuleInfoClass(4,'assets/animations/electrical.json', 'Electrical', 'Electrical Estimate', 'Electric estimate is a comprehensive mobile app module designed to streamline electrical work management, estimation, and execution. This module empowers electrical professionals to work efficiently, accurately, and safely.', 'link'),
  ModuleInfoClass(5,'assets/animations/plumbing.json', 'Plumbing', 'Plumbing Estimate', 'Plumbing Estimate is  module designed for plumbers, contractors, engineers, and homeowners to streamline the process of calculating plumbing material requirements and estimating project costs. It offers a comprehensive toolset for planning, managing, and optimizing plumbing installations in residential, commercial, or industrial buildings.', 'link'),
  ModuleInfoClass(6,'assets/animations/drawer.json', 'Finishing', 'Finishing Estimate', 'inishing Estimate is a module tailored for contractors, interior designers, homeowners, and construction professionals to assist in estimating the costs and materials required for interior and exterior finishing work. It covers a wide range of tasks, such as painting, tiling, flooring, plastering, and other decorative elements that are essential in completing a construction or renovation project.', 'link'),
  ModuleInfoClass(7,'assets/animations/drawer.json', 'Furniture', 'Furniture Estimate', 'urnitureEstimate is a comprehensive mobile app module designed to streamline furniture estimation, quotation, and ordering. This module empowers furniture professionals to work efficiently, accurately, and profitably.', 'link'),
];

getModuleIndex(String madule){
  switch (madule){
    case 'Design': return 0;
    case 'Foundation': return 1;
    case 'Masonry': return 2;
    case 'Roof': return 3;
    case 'Electrical': return 4;
    case 'Plumbing': return 5;
    case 'Finishing': return 6;
    case 'Furniture': return 7;
    default :{return 0;}
  }
}
