// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application_3/screns/location_detail.dart';
import 'package:flutter_application_3/style.dart';

import 'location/locations.dart';
import 'models/location.dart';

void main() {
  runApp(MyApp());
}

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          final arguments = settings.arguments as Map<String, dynamic>;
          screen = LocationDetail(arguments['Id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
            titleTextStyle: TextTheme(bodyText1: AppbarStyle).headline1,
            // ignore: deprecated_member_use
            textTheme: TextTheme(bodyText1: BodyStyle1)));
  }
}
