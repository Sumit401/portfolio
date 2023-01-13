import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget Scientific_calculator() {
  return SizedBox(
    width: 430,
    height: 450,
    child: Card(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all( width: 2),
                    shape: BoxShape.rectangle),
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                child: Image.asset(
                  "assets/images/projectImages/calculator_project.png",
                  width: 300,
                  height: 200,
                  fit: BoxFit.fill,
                )),

            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              child: const Text("Scientific Calculator with Converter in Flutter",
                  textAlign: TextAlign.center,
                  style:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/android2.png",height: 50,width: 70,),
                  Image.asset("assets/images/flutter3.png",height: 50,width: 70,)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      String viewapp = "https://calculator-sumit401.netlify.app/";
                      await launchUrlString(viewapp, mode: LaunchMode.externalApplication);
                    },
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(BorderSide(color: Colors.deepPurple)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    child: const Text("View Project",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 14,
                            fontWeight: FontWeight.w300))),
                OutlinedButton(
                    onPressed: () async{
                      String viewapp = "https://www.amazon.com/dp/B0BQ7PWY35/ref=apps_sf_sta";
                      await launchUrlString(viewapp, mode: LaunchMode.externalApplication);
                    },
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(BorderSide(color: Colors.deepPurple)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    child: const Text("Download Apk",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 14,
                            fontWeight: FontWeight.w300))),
                OutlinedButton(
                    onPressed: () async {
                      String viewapp = "https://github.com/Sumit401/Calculator-Flutter";
                      await launchUrlString(viewapp, mode: LaunchMode.externalApplication);
                    },
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(BorderSide(color: Colors.deepPurple)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    child: const Text("View on Github",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 14,
                            fontWeight: FontWeight.w300))),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}