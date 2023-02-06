import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../constant/fileURL.dart';
import 'styles.dart';

Widget scientificCalculator() {
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
            projectImageCalc(),
            projectNameCalc(),
            projectSkillsCalc(),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: 20,
              runSpacing: 10,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      await launchUrlString(scientificCalcWebView, mode: LaunchMode.externalApplication);
                    },
                    style: buttonStyle(),
                    child: buttonText("View Project")),
                OutlinedButton(
                    onPressed: () async{
                      await launchUrlString(scientificCalcAPK, mode: LaunchMode.externalApplication);
                    },
                    style: buttonStyle(),
                    child: buttonText("Download APK")),
                OutlinedButton(
                    onPressed: () async {
                      await launchUrlString(scientificCalcGit, mode: LaunchMode.externalApplication);
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

projectSkillsCalc() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(androidImage,height: 50,width: 70,),
        Image.asset(flutterImage,height: 50,width: 70,)
      ],
    ),
  );
}

projectNameCalc() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10, top: 10),
    child: const Text("Scientific Calculator with Converter in Flutter",
        textAlign: TextAlign.center,
        style:
        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
  );
}

projectImageCalc() {
  return Container(
      decoration: BoxDecoration(
          border: Border.all( width: 2),
          shape: BoxShape.rectangle),
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child: Image.asset(
        scientificCalcImage,
        width: 300,
        height: 200,
        fit: BoxFit.fill,
      ));
}