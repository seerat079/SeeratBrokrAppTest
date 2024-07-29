import 'package:flutter/material.dart';

BoxDecoration Constant_BoxDecoration() {
  return BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          blurRadius: 7,
          spreadRadius: 5,
          offset: Offset(10, 3),
          color: Colors.grey.withOpacity(0.5),
        )
      ]);
}
