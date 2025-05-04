import 'package:cmca/config/utils/color.dart';
import 'package:cmca/widgets/app_bar.dart';
import 'package:cmca/config/utils/formatting.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('About Us'),
      body: ListView(
        padding: const EdgeInsets.all(15),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          titleText("Civil Material Cost Analysis"),
          sizeBox(10),
          infoText("Welcome to CMCA (Comprehensive Modular Construction App), your go-to solution for accurate, efficient, and streamlined construction project estimation. We are a forward-thinking technology company dedicated to revolutionizing the construction industry by providing tools that empower professionals at every stage of a building project. Our mission is to simplify and automate the complex processes of cost estimation, material planning, and project management, allowing our users to focus on what matters most—building great things."),
          sizeBox(10),
          headingText("What We Do"),
          infoText("Our app offers a range of specialized modules that cover every major aspect of construction, including"),
          sizeBox(5),
          infoText("▪ Design Estimate\n▪ Foundation Estimate\n▪ Masonry Estimate\n▪ Steel Estimate\n▪ Roof Estimate\n▪ Plumbing Estimate\n▪ Mechanical Estimate\n▪ Electrical Estimate\n▪ Finishing Estimate\n▪ Furniture Estimate"),
          sizeBox(5),
          infoText("Each module is designed to help construction professionals streamline their work, from cost estimation and material management to execution and project tracking. By providing accurate estimates and simplifying complex calculations, CMCA enables users to plan and execute projects with confidence, minimizing delays and avoiding costly errors."),
          sizeBox(10),
          headingText("Our Mission"),
          infoText("Our mission is simple to transform the way construction professionals work by offering them a reliable, all-in-one platform for estimation and project management. We believe that with the right tools, building the future can be faster, smarter, and more efficient."),
          sizeBox(10),
          headingText("Our Team"),
          infoText("▪ Malik Saqib Faraz - CEO & Civil Engineer"),
          infoText("▪ Ammar Shafiq - Founder & Developer"),
          sizeBox(10),
          headingText("Why Choose CMCA?"),
          infoText("Our app offers precise cost and material estimates for each stage of your project."),
          infoText("Save time by automating complex calculations and managing all aspects of your construction work in one place."),
          infoText("Tailor each module to fit your specific project needs, ensuring that you have full control over your estimates."),
          infoText("With a simple, intuitive interface, even the most complex estimation tasks are made easy."),
          sizeBox(10),
          headingText("Join Us in Building the Future"),
          infoText("Whether you're an architect, contractor, or homeowner, CMCA is here to help you build with confidence. With our cutting-edge technology and expert support, you'll be able to manage projects more effectively, reduce errors, and bring your construction vision to life."),
          sizeBox(10),
          infoText("Thank you for choosing CMCA.", AppColors.primary),
          sizeBox(10),
        ]
      ),
    );
  }
}