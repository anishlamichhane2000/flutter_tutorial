// ignore_for_file: prefer_const_constructors, unnecessary_this, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, empty_constructor_bodies

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';

class ImageBanner extends StatelessWidget {
  final String _assestpath;
  ImageBanner(this._assestpath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 200.0, width: 150.0),
      decoration: BoxDecoration(color: Colors.blue),
      child: Image.asset(
        _assestpath,
        fit: BoxFit.cover,
      ),
    );
  }
}
