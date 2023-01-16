
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../constant/fileURL.dart';
import 'styles.dart';

Widget vehicle_rental() {
  return SizedBox(
    width: 430,
    height: 500,
    child: Card(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            projectImageRental(),
            projectNameRental(),
            projectSkillsRental(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      await launchUrlString(vehicleRentalGit,mode: LaunchMode.externalApplication);
                    },
                    style: buttonStyle(),
                    child: buttonText("View on Github")),

              ],
            ),
          ],
        ),
      ),
    ),
  );
}

projectNameRental() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10, top: 10),
    child: const Text(
        "Vehicle Rental Application in Android",
        textAlign: TextAlign.center,
        style:
        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
  );
}

projectImageRental() {
  return Container(
      decoration: BoxDecoration(
          border: Border.all( width: 2),
          shape: BoxShape.rectangle),
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child: Image.asset(
        vehicleRentalImage,
        width: 300,
        height: 200,
        fit: BoxFit.fill,
      ));
}

projectSkillsRental() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(androidImage,height: 50,width: 70,),
        Image.asset(javaImage,height: 50,width: 70,),
      ],
    ),
  );
}