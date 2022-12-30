import 'package:flutter/material.dart';

Widget skills_container() {
  return Container(
      margin: const EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset("assets/images/android.png",width: 100,height: 100,color: Colors.white,)),
              Expanded(child: Image.asset("assets/images/flutter2.png",width: 100,height: 100,color: Colors.white,)),
              Expanded(child: Image.asset("assets/images/firebase2.png",width: 100,height: 100,color: Colors.white,)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset("assets/images/java.png",width: 100,height: 100,color: Colors.white,)),
              Expanded(child: Image.asset("assets/images/git2.png",width: 100,height: 100,color: Colors.white,)),
              Expanded(child: Image.asset("assets/images/mysql.png",width: 100,height: 100,color: Colors.white,)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset("assets/images/html.png",width: 100,height: 100,color: Colors.white,)),
              Expanded(child: Image.asset("assets/images/css.png",width: 100,height: 100,color: Colors.white,)),
              Expanded(child: Image.asset("assets/images/php.png",width: 100,height: 100,color: Colors.white,)),
            ],
          ),
        ],
      ));
}
