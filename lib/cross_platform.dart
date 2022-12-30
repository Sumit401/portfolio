import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget crossplatform_container(){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(padding: const EdgeInsets.symmetric(horizontal: 20),child: Image.asset("assets/images/android2.png",fit: BoxFit.fitWidth,width: 100,height: 100,)),
          Container(padding: const EdgeInsets.symmetric(horizontal: 20),child: Image.asset("assets/images/windows.png",fit: BoxFit.fitWidth,width: 100,height: 100,)),
          Container(padding: const EdgeInsets.symmetric(horizontal: 20),child: Image.asset("assets/images/ios.png",fit: BoxFit.fitWidth,width: 100,height: 100,)),
        ],
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: const Text("Cross Platform Development",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w800)),
      ),
    ],
  );
}