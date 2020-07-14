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

import 'package:charts_flutter/flutter.dart';

class detail extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<detail> {
  var app1 = NumericComboLineBarChart.withSampleData();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('detail')),
      body: _body(),

    );
  }
  _body(){

  }
}
