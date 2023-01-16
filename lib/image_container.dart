import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'constant/fileURL.dart';

Widget profileimage_container(){
  return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.orange, width: 4),
          image: const DecorationImage(
              image: AssetImage("assets/images/my_pic.jpg"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.center)),
      width: 120,
      height: 120,
      margin: const EdgeInsets.only(top: 20),
      child: Container());
}

Widget git_image(){
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        child: Image.asset("assets/images/git.png",
            height: 50, width: 50),
        onTap: () async{
          String git = "https://www.github.com/Sumit401";
          await launchUrlString(git);
        },
      ));
}

Widget stack_image(){
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        child: Image.asset("assets/images/stack.png",
            height: 50, width: 50),
        onTap: () async{
          String stack = "https://stackoverflow.com/users/9409460/sumit-sinha";
          await launchUrlString(stack);
        },
      ));
}

Widget linkedin_image(){
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        child: Image.asset("assets/images/linkedin.png",
            height: 50, width: 50),
         onTap: () async{
  String linkedin = "https://www.linkedin.com/in/sumit401/";
  await launchUrlString(linkedin);
  },
      ));

}
Widget resume_image(){
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        child: Column(
          children: [
            Icon(FontAwesomeIcons.fileZipper,size: 40,color: Colors.lightGreen.shade50,),
            Text("Resume",style: TextStyle(fontSize: 12,color: Colors.lightGreen.shade50,overflow: TextOverflow.ellipsis ),textAlign: TextAlign.center,)
          ],
        ),
        onTap: () async{
          await launchUrlString(resume);
        },
      ),
          );
}