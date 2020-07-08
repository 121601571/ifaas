import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'main.dart';
import 'piepic.dart';
import 'inputdt.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var app1 = NumericComboLineBarChart.withSampleData();

  @override
  Widget build(BuildContext context) {
    return
       new Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // app1,
                  RaisedButton(
                    child: Text('chart1'),
                    onPressed: _gotoc1,
                  ),
                  RaisedButton(
                    child: Text('chart2'),
                    onPressed: _gotoc2,
                  ),
                  RaisedButton(
                    child: Text('input'),
                    onPressed: _gotoc3,
                  ),

                ],
            )
        ),


    );
  }

  _gotoc1(){
    var app1 = NumericComboLineBarChart.withSampleData();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => app1),
    );
  }

  _gotoc2(){
    var app1 = DonutAutoLabelChart.withSampleData();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => app1),
    );

  }

  _gotoc3(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => inputv()),
    );

  }

}