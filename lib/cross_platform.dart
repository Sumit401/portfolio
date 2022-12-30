import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget crossplatform_container(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal:10),
        child: Wrap(
          direction: Axis.horizontal,
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