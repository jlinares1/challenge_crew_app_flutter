import 'package:flutter/material.dart';

const kPrimaryButtonStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Colors.blueGrey),
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)))));

const kPrimaryButtonTextStyle = TextStyle(color: Colors.white, fontSize: 16);

const kSecondaryButtonStyle = ButtonStyle(
  shape: WidgetStatePropertyAll(
    RoundedRectangleBorder(
      side: BorderSide(color: Colors.blueGrey, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
  ),
);

const kSecondaryButtonTextStyle =
    TextStyle(fontSize: 16, color: Colors.blueGrey);

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
