import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Responsive.dart';
import 'image_container.dart';
import 'inkwell_container.dart';

Widget profileContainer(context){
  return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepPurple, Colors.purple,
            Colors.purpleAccent, Colors.blueAccent, Colors.blue,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      height: 600,
      width: ResponsiveWidget.isSmallScreen(context) ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width/2-2,
      //color: Colors.deepPurple,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          profileimage_container(),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text("Sumit",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.only(top: 10),
            child: const Text("Flutter Cross - Platform Developer",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    letterSpacing: 0.5),overflow: TextOverflow.visible,textAlign: TextAlign.center),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Wrap(
              direction: Axis.horizontal,
              children: const [
                Icon(FontAwesomeIcons.locationDot,
                    color: Colors.white, size: 18),
                VerticalDivider(
                  width: 10,
                ),
                Text("Patna, Bihar, India",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        letterSpacing: 0.7),overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
          inkwell_contact("8210794699"),
          inkwell_contact("sumitsinha401@gmail.com"),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: git_image()),
                Expanded(child: stack_image()),
                Expanded(child: linkedin_image()),
                Expanded(child: resume_image()),
              ],
            ),
          )
        ],
      ));
}