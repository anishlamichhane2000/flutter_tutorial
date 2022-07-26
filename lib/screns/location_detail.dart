// ignore_for_file: prefer_const_constructors, prefer_spread_collections, prefer_const_declarations, prefer_typing_uninitialized_variables, prefer_inlined_adds, unused_import, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/location.dart';
import 'package:flutter_application_3/models/location_fact.dart';
import 'package:flutter_application_3/screns/textsection.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location!.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagepath),
          ]..addAll(textsections(location))),
    );
  }

  List<Widget> textsections(Location location) {
    return location.facts
        .map((fact) => Textsection(fact.title, fact.text))
        .toList();
  }
}
