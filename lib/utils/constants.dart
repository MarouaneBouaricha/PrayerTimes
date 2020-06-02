import 'package:flutter/material.dart';

const Color color1 = Color(0xFF8000e8);
const Color color2 = Color(0xFF34009b);
const Color color3 = Color(0xFF8133d4);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: "Enter City Name",
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
    borderSide: BorderSide.none,
  ),
);
