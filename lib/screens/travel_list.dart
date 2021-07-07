import 'package:flutter/material.dart';

class travel_list extends StatefulWidget {
  const travel_list({Key? key}) : super(key: key);

  @override
  _travel_listState createState() => _travel_listState();
}

class _travel_listState extends State<travel_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:Text("Hello world"),
      ),
    );
  }
}

class TravelViewCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            Container()
          ],
        ),
      ),
    );
  }
}
