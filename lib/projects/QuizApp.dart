
import 'package:flutter/material.dart';
import 'package:portfolio/constant/fileURL.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'styles.dart';

Widget quizApp() {
  return SizedBox(
    width: 430,
    height: 460,
    child: Card(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            projectImageQuiz(),
            projectNameQuiz(),
            projectSkillsQuiz(),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: 20,
              runSpacing: 20,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      await launchUrlString(quizAppWebView, mode: LaunchMode.externalApplication);
                    },
                    style: buttonStyle(),
                    child: buttonText("View Project")),
                OutlinedButton(
                    onPressed: () async{
                      await launchUrlString(quizAppApk, mode: LaunchMode.externalApplication);
                    },
                    style: buttonStyle(),
                    child: buttonText("Download Apk")),
                const VerticalDivider(width: 10),
                OutlinedButton(
                    onPressed: () async {
                      await launchUrlString(quizAppGit, mode: LaunchMode.externalApplication);
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

projectNameQuiz() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10, top: 10),
    child: const Text("Champ Quizz - The Quiz App",
        textAlign: TextAlign.center,
        style:
        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
  );
}

projectImageQuiz() {
  return Container(
      decoration: BoxDecoration(
          border: Border.all( width: 2),
          shape: BoxShape.rectangle),
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child: Image.asset(quizAppImage,
        width: 300,
        height: 200,
        fit: BoxFit.fill,
      ));
}

projectSkillsQuiz() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(androidImage,height: 50,width: 70,),
          Image.asset(flutterImage,height: 50,width: 70,),
          Image.asset(firebaseImage,height: 50,width: 70,),
        ],
      ),
    );
}