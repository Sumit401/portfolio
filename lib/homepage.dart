import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
        child: Row(
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
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 2),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/my_pic.jpg"),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.center)),
                        width: 120,
                        height: 120,
                        margin: const EdgeInsets.only(top: 20),
                        child: Container()),
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
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(FontAwesomeIcons.phone,
                                color: Colors.white, size: 18),
                            VerticalDivider(
                              width: 10,
                            ),
                            Text("8210794699",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    letterSpacing: 0.5)),
                          ],
                        ),
                      ),
                      onTap:() async {
                        String whatsapp = "tel:8210794699";
                        await launchUrlString(whatsapp, mode: LaunchMode.externalApplication);
                      }
                    ),
                    InkWell(
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(FontAwesomeIcons.envelopeOpen,
                                  color: Colors.white, size: 18),
                              VerticalDivider(
                                width: 10,
                              ),
                              Text("sumitsinha401@gmail.com",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      letterSpacing: 0.5)),
                            ],
                          ),
                        ),
                        onTap: () async {
                          String mail = "mailto:sumitsinha401@gmail.com";
                          await launchUrlString(mail, mode: LaunchMode.externalApplication);
                        }),
                  ],
                )),
            Container(
                height: 600,
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.cyan,
                alignment: Alignment.center,
                child: Text(
                  "Hello",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
