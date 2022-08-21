import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  fillColor: Colors.white60,
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff1a7a30), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff1a7a30), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
