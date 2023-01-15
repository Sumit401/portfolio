import 'package:flutter/material.dart';

import 'package:portfolio/projects/QuizApp.dart';
import 'Responsive.dart';
import 'proficiencyContainer.dart';
import 'profileContainer.dart';
import 'projects/blogging System.dart';
import 'projects/goGrocery.dart';
import 'projects/schoolBusTrack.dart';
import 'projects/scientificCalcFlutter.dart';
import 'projects/vehicleRental.dart';
import 'skills_container.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text("Portfolio")),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              //direction: Axis.horizontal,
              children: [
                profileContainer(context),
                containerForHorizontalLine(context),
                Container(
                    color: Colors.black45,
                    height: 600,
                    width: ResponsiveWidget.isSmallScreen(context)
                        ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width / 2 - 2,
                    alignment: Alignment.center,
                    child: skills_container()),
              ],
            ),
            // Horizontal Line
            Container(width: MediaQuery.of(context).size.width,height: 3,color: Colors.black,),
            profeciencyContainerTitle(),
            proficiencyContainer(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 3,
              color: Colors.black,
              margin: const EdgeInsets.symmetric(vertical: 10),
            ),
            Column(
              children: [
                projectHeading(),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    quizApp(),
                    go_grocery(),
                    Scientific_calculator(),
                    vehicle_rental(),
                    schoolbus_track(),
                    blogging_system(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  containerForHorizontalLine(context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            color: Colors.black,
            height: 2,
            width: MediaQuery.of(context).size.width)
        : Container(color: Colors.black, height: 600, width: 2);
  }

  projectHeading() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: const Text("Projects",
          style: TextStyle(
              fontSize: 35,
              color: Colors.black,
              fontWeight: FontWeight.bold,fontFamily: 'Aloevera',letterSpacing: 1.5)),
    );
  }
}
