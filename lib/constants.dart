import 'package:flutter/material.dart';

const kInputButtonInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
      width: 1.0,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 2.0,
    ),
  ),
);

const kInputDropdownInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
      width: 1.0,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 2.0,
    ),
  ),
);
