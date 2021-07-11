import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/models/TravelModel.dart';
import 'package:travel_app/provider/travel_data_provider.dart';


class DetailsPage extends StatefulWidget {
  //const DetailsPage({Key? key}) : super(key: key);
  //
  // final TravelDataProvider mdl;
  //
  // DetailsPage({required this.mdl});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // @override
  // void initState() {
  //   final mdl = Provider.of<TravelDataProvider>(context, listen: false);
  //   mdl.loadTravel();
  // }

  @override
  Widget build(BuildContext context) {
    final mdl = Provider.of<TravelDataProvider>(context);
    return Scaffold(
      body: PageView.builder(
        itemCount: mdl.travelList.length,
          itemBuilder: (context, index){
            TravelModel Travel = mdl.travelList[index];
                   return detailsViewCard(
                      name: Travel.name,
                       description: Travel.description,
                       image: Travel.image);
          }
      ),

    );


    // TravelModel Travel = mdl.travelList[index];
    // return detailsViewCard(
    //     description: Travel.description,
    //     image: Travel.image,
    //     name: Travel.name);
    // final mdl = Provider.of<TravelDataProvider>(context);
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Details"),
    //   ),
      // body: ListView.builder(
      //     itemCount: mdl.travelList.length,
      //     itemBuilder: (context, index) {
      //       TravelModel Travel = mdl.travelList[index];
      //       return detailsViewCard(
      //           name: Travel.name,
      //           description: Travel.description,
      //           image: Travel.image);
      //     }),
    //);
  }
}

class detailsViewCard extends StatelessWidget {
  final String image;
  final String name;
  final String description;

  detailsViewCard(
      {required this.description, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
                tag: image,
                child: Image.network(image)
            ),

            Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
            SizedBox(
              height: 15.0,
            ),
            Text(name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromRGBO(54, 54, 54, 1)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(description,
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(54, 54, 54, 1)),
            )
          ],
        ),
      ),
    );
  }
}
