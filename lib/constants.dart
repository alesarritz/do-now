import 'package:flutter/material.dart';

const Color kLightBg = Color(0xFF83C5BE);
const Color kDarkBg = Color(0xFF006D77);
const Color kAlmostWhite = Color(0xFFEDF6F9);

const InputDecoration kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
  filled: true,
  fillColor: kAlmostWhite,
  hintText: 'Add task here...',
  hintStyle: TextStyle(color: kLightBg, fontSize: 20),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kLightBg, width: 3),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kDarkBg, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(30))),
);

const BoxDecoration kContainerDec = BoxDecoration(
    color: kDarkBg,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(25),
      topRight: Radius.circular(25),
    ));

const addButtonText = Text(
  '+ ADD',
  textAlign: TextAlign.center,
  style: TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 22.0,
  ),
);
