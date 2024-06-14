import 'package:flutter/material.dart';

class ColorUtils{
  static Color textColor(BuildContext context){
    return Theme.of(context).textTheme.bodyLarge!.color!;
  }
}