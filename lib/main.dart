import 'package:flutter/material.dart';
import 'package:travel_app/screens/travel_list.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Bird App",
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.white)
        ),
        home: travel_list(),
    );
  }
}



