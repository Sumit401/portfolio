import 'package:flutter/cupertino.dart';

Widget proficiency_icons() {
  return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: Image.asset("assets/images/android.png", width: 120, height: 100,)),
          Expanded(
              child: Image.asset("assets/images/flutter.png", width: 120, height: 100)),
          Expanded(
              child: Image.asset("assets/images/firebase.png", width: 100, height: 80)),
        ],
      ));
}
