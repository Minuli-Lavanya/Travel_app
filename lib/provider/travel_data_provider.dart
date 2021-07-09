import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/TravelModel.dart';

class TravelDataProvider with ChangeNotifier{
  List<TravelModel> travelList = [];

  loadTravel(){
    FirebaseFirestore.instance.collection('travels').get().then((querySnapshot){
      querySnapshot.docs.forEach((queryDocSnapshot) {
        if(queryDocSnapshot.exists){
          travelList.add(TravelModel.fromJson(queryDocSnapshot.data()));
        }
      });
      notifyListeners();
    });
  }
}