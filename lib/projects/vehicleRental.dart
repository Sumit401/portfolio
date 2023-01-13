
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget vehicle_rental() {
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
                  "assets/images/projectImages/vehicle_rental.png",
                  width: 300,
                  height: 200,
                  fit: BoxFit.fill,
                )),
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              child: const Text(
                  "Vehicle Rental Application in Android",
                  textAlign: TextAlign.center,
                  style:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/android2.png",height: 50,width: 70,),
                  Image.asset("assets/images/java2.png",height: 50,width: 70,),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      String urlLaunch= "https://github.com/Sumit401/Bike_Rental";
                      await launchUrlString(urlLaunch,mode: LaunchMode.externalApplication);
                    },
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(BorderSide(color: Colors.deepPurple)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    child: const Text("View on Github",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.w300))),
                /*const VerticalDivider(width: 10),
                OutlinedButton(
                    onPressed: () => null,
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(BorderSide(color: Colors.deepPurple)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    child: const Text("View on Github",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.w300))),*/
              ],
            ),
          ],
        ),
      ),
    ),
  );
}