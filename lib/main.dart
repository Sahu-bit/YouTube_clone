import 'package:flutter/material.dart';
import '/pages/dashboard.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const DashBoard(),
    theme: ThemeData.dark(),
  ));
}