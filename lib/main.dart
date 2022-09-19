import 'package:flutter/material.dart';
import 'package:toters_app/ui/detiles.dart';
import 'package:toters_app/ui/homePge.dart';
void main() {
  runApp(MyApp());}


  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home:  HomePage(),
  );
  }
  }

