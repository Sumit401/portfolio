import 'package:flutter/material.dart';

import 'cross_platform.dart';

profeciencyContainerTitle() {
  return Container(
    margin: const EdgeInsets.only(top: 20,bottom: 10),
    alignment: Alignment.center,
    child: const Text("Proficiencies",
        style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: 'NishikiTeki-MVxaJ',
            letterSpacing: 1)),
  );
}

proficiencyContainer(){
  return Container(
      margin: const EdgeInsets.only(bottom: 10,top: 10),
      child: crossPlatformContainer()
  );
}