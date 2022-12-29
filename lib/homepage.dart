import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/image_container.dart';
import 'package:portfolio/inkwell_container.dart';

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
                      Colors.deepPurple,
                      Colors.purple,
                      Colors.purpleAccent,
                      Colors.blueAccent,
                      Colors.blue,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                    height: 600,
                    width: MediaQuery.of(context).size.width / 2,
                    //color: Colors.deepPurple,
                    alignment: Alignment.center,
                    child: Column(
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
                          child: const Text("Flutter Developer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  letterSpacing: 0.5)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
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
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(top: 20),
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
                    child: const Text(
                      "Hello",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("Proficiencies",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'NishikiTeki-MVxaJ')),
            ),
          ],
        ),
      ),
    );
  }
}
