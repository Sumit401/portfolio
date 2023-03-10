import 'package:flutter/material.dart';

Widget crossPlatformContainer(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal:10),
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceEvenly,
          runAlignment: WrapAlignment.spaceEvenly,
          children: [
            Container(padding: const EdgeInsets.symmetric(horizontal: 20),child: Image.asset("assets/images/android2.png",width: 100,height: 100,)),
            Container(padding: const EdgeInsets.symmetric(horizontal: 20),child: Image.asset("assets/images/ios.png",width: 100,height: 100,)),
            Container(padding: const EdgeInsets.symmetric(horizontal: 20),child: Image.asset("assets/images/windows.png",width: 100,height: 100,)),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: const Text("Cross Platform Development",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w800)),
      ),
    ],
  );
}