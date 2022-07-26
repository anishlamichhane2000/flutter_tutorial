// ignore_for_file: prefer_const_declarations, unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers, unused_import, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                onTap: () => _onLocationTap(context, location.Id),
                child: Container(child: Text(location.name))))
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }
}