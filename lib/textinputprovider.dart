import 'package:flutter/material.dart';
class TextInputprovider extends ChangeNotifier{
  String _text="";
  String get text=>_text;

  void ChangeText(String value)
{
  _text=value;
  notifyListeners();
}}