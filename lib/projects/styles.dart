
import 'package:flutter/material.dart';

buttonStyle() {
  return ButtonStyle(
      side: const MaterialStatePropertyAll(BorderSide(color: Colors.deepPurple)),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20))));
}



buttonText(String name) {
  return Text(name,
      style: const TextStyle(
          color: Colors.deepPurple,
          fontSize: 14,
          fontWeight: FontWeight.w300));
}
