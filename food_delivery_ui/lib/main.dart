import 'package:flutter/material.dart';
import 'package:food_delivery_ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Food Devlivery UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Colors.grey[50],
          primaryColor: Colors.deepOrangeAccent,
        ),
        home: HomeScreen());
  }
}
