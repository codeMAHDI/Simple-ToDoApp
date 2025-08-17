import 'package:flutter/material.dart';

InputDecoration AppInputDecocation(label) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 2.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 2.0),
    ),
    labelText: label,
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(23),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}

SizedBox SizeBox50(child) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}
