// ignore_for_file: prefer_const_constructors, unnecessary_this, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';

class Textsection extends StatelessWidget {
  late final String _title;
  late final String _body;
  static const double _hpad = 16.0;
  Textsection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0),
            child: Text(_title)),
        Container(
            padding: EdgeInsets.fromLTRB(_hpad, 10.0, _hpad, 4.0),
            child: Text(_body))
      ],
    );
  }
}
