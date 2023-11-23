import 'package:flutter/cupertino.dart';

Widget gap(double w, {bool v = false}){
  if(v) return SizedBox(height: w);
  return SizedBox(width: w);
}