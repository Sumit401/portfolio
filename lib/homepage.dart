import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/cross_platform.dart';
import 'package:portfolio/image_container.dart';
import 'package:portfolio/inkwell_container.dart';
import 'package:portfolio/proficiencies.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text("Portfolio")),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [
                Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.deepPurple, Colors.purple,
                      Colors.purpleAccent, Colors.blueAccent, Colors.blue,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                    height: 600,
                    width: MediaQuery.of(context).size.width / 2,
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
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text("Flutter Cross-Platform Developer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  letterSpacing: 0.5),overflow: TextOverflow.ellipsis),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                      letterSpacing: 0.7)),
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
                    )),
                Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width / 2,
                    color: Colors.cyan,
                    alignment: Alignment.center,
                  child:proficiency_icons()
                ),
              ],
            ),
            Container(width: MediaQuery.of(context).size.width,height: 3,color: Colors.black,),
            Container(
              margin: const EdgeInsets.only(top: 20,bottom: 10),
              alignment: Alignment.center,
              child: const Text("Proficiencies",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontFamily: 'NishikiTeki-MVxaJ',letterSpacing: 1)),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10,top: 10),
              child: crossplatform_container()
            ),
            Container(width: MediaQuery.of(context).size.width,height: 3,color: Colors.black,margin: const EdgeInsets.symmetric(vertical: 10),),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  child: const Text("Projects",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,fontFamily: 'Aloevera',letterSpacing: 1.5)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
