// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/location_fact.dart';

class Location {
  late int Id;
  late String name;
  late String imagepath;
  late List<Locationfact> facts;
  Location(this.Id, this.name, this.imagepath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, "kathmandu", "assets/images/2.jpeg", [
        Locationfact("SUMMARY",
            "kathmandu is the historical city which contain many national heritage."),
        Locationfact("Information",
            "there are different places like kathmadu durbar square ,palace and temple etc"),
      ]),
      Location(2, "bhaktapur", "assets/images/3.jpeg", [
        Locationfact("SUMMARY",
            "bhaktapur is the historical city which contain many national heritage."),
        Locationfact("Information",
            "there are different places like bhaktapur durbar square ,palace and temple etc"),
      ]),
      Location(3, "kathmandu", "assets/images/4.jpeg", [
        Locationfact("SUMMARY",
            "Pokhara is the historical city which contain many national heritage."),
        Locationfact("Information",
            "there are different places like fewa taal,beegnas taaletc"),
      ])
    ];
  }

  static Location? fetchByID(int locationID) {
    // NOTE: this will replaced by a proper API call
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].Id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
