import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import '../main.dart';
import '../piepic.dart';
import '../inputdt.dart';
import '../chart3.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'detail.dart';
import 'package:charts_flutter/flutter.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    showSemanticsDebugger: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var app1 = NumericComboLineBarChart.withSampleData();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(),
      body: body(),
    );
  }

  body() {
    var app1 = NumericComboLineBarChart.withSampleData();
    return app1;
  }
}
