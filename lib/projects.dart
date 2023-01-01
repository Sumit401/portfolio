import 'package:flutter/material.dart';

Widget Scientific_calculator() {
  return SizedBox(
    width: 400,
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
                  "assets/images/calculator_project.png",
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
              margin: EdgeInsets.symmetric(vertical: 10),
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
                    onPressed: () => null,
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(BorderSide(color: Colors.deepPurple)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    child: const Text("View Project",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.w300))),
                const VerticalDivider(width: 10),
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
                            fontWeight: FontWeight.w300))),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget go_grocery() {
  return SizedBox(
    width: 400,
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
                  "assets/images/go_grocery.png",
                  width: 300,
                  height: 200,
                  fit: BoxFit.fill,
                )),

            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              child: const Text("Go Grocery - One of the Grocery App in Flutter",
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
                  Image.asset("assets/images/flutter3.png",height: 50,width: 70,),
                  Image.asset("assets/images/firebase.png",height: 50,width: 70,),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () => null,
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(BorderSide(color: Colors.deepPurple)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    child: const Text("View Project",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.w300))),
                const VerticalDivider(width: 10),
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
                            fontWeight: FontWeight.w300))),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget blogging_system() {
  return SizedBox(
    width: 400,
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
                  "assets/images/blogging.png",
                  width: 300,
                  height: 200,
                  fit: BoxFit.fill,
                )),
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              child: const Text(
                  "Blogging System - A Website where you can post your Blogs and view Blogs of others on same platform.",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/html.png",height: 50,width: 70,),
                  Image.asset("assets/images/css.png",height: 50,width: 70,),
                  Image.asset("assets/images/php.png",height: 50,width: 70,),
                  Image.asset("assets/images/mysql.png",height: 50,width: 70,),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () => null,
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(BorderSide(color: Colors.deepPurple)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    child: const Text("View Project",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.w300))),
                const VerticalDivider(width: 10),
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
                            fontWeight: FontWeight.w300))),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}


Widget vehicle_rental() {
  return SizedBox(
    width: 400,
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
                  "assets/images/vehicle_rental.png",
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
                    onPressed: () => null,
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(BorderSide(color: Colors.deepPurple)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    child: const Text("View Project",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.w300))),
                const VerticalDivider(width: 10),
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
                            fontWeight: FontWeight.w300))),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
