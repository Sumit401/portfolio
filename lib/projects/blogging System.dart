import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../constant/fileURL.dart';
import 'styles.dart';

Widget blogging_system() {
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
            projectImageBlog(),
            projectNameBlog(),
            projectSkillsBlog(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      await launchUrlString(bloggingGit,
                          mode: LaunchMode.externalApplication);
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

projectNameBlog() {
  return Container(
    margin: const EdgeInsets.only(bottom: 10, top: 10),
    child: const Text(
        "Blogging System - A Website where you can post your Blogs and view Blogs of others on same platform.",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
  );
}

projectSkillsBlog() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(htmlImage, height: 50, width: 70,),
        Image.asset(cssImage, height: 50, width: 70,),
        Image.asset(phpImage, height: 50, width: 70,),
        Image.asset(mySqlImage, height: 50, width: 70,),
      ],
    ),
  );
}

projectImageBlog() {
  return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2), shape: BoxShape.rectangle),
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child: Image.asset(bloggingImg,
        width: 300,
        height: 200,
        fit: BoxFit.fill,
      ));
}

