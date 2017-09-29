import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

var httpClient = createHttpClient();

class CloudRoute<T> extends MaterialPageRoute<T> {

  final String title;

  CloudRoute({this.title}) : super(builder: (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new FlatButton(
          onPressed: () {
            Navigator.pop(context, "Weclome Back to Cloud!");
          },
          child: new Text('Pop!'),
        ),
      ),
    );
  },);



}