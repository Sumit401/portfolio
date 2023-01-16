import 'package:flutter/material.dart';
import 'package:portfolio/constant/fileURL.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'styles.dart';


Widget schoolbus_track() {
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
            projectImageSchoolBus(),
            projectNameSchoolBus(),
            projectSkillsSchoolBus(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      await launchUrlString(schoolBusTrackGit,mode: LaunchMode.externalApplication);
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

projectSkillsSchoolBus() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(androidImage,height: 50,width: 70,),
        Image.asset(javaImage,height: 50,width: 70,),
      ],
    ),
  );
}

projectNameSchoolBus() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10, top: 10),
    child: const Text(
        "School Bus Tracking Application in Android",
        textAlign: TextAlign.center,
        style:
        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
  );
}

projectImageSchoolBus() {
  return Container(
      decoration: BoxDecoration(
          border: Border.all( width: 2),
          shape: BoxShape.rectangle),
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child: Image.asset(
        schoolBusTrackImage,
        width: 300,
        height: 200,
        fit: BoxFit.fill,
      ));
}
