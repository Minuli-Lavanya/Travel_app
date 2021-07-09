import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/models/TravelModel.dart';
import 'package:travel_app/provider/travel_data_provider.dart';

class travel_list extends StatefulWidget {
  const travel_list({Key? key}) : super(key: key);

  @override
  _travel_listState createState() => _travel_listState();
}

class _travel_listState extends State<travel_list> {
  @override
  void initState() {
    // TODO: implement initState
    final mdl = Provider.of<TravelDataProvider>(context, listen: false);
    mdl.loadTravel();
  }
  
  @override
  Widget build(BuildContext context) {
    final mdl = Provider.of<TravelDataProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: mdl.travelList.length,
          itemBuilder: (context, index){
          TravelModel Travel = mdl.travelList[index];
          return TravelViewCard(
              name: Travel.name,
              shortDetail: Travel.shortDetail,
              image: Travel.image
          );
        }
      ),
    );
  }
}

class TravelViewCard extends StatelessWidget {
  final String image;
  final String name;
  final String shortDetail;

  TravelViewCard(
      {required this.shortDetail, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromRGBO(54, 54, 54, 1)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(shortDetail, style: TextStyle(color: Color.fromRGBO(141, 144, 145, 1)),)
          ],
        ),
      ),
    );
  }
}
