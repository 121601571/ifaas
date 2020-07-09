import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'main.dart';
import 'piepic.dart';
import 'inputdt.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    showSemanticsDebugger: false,

    home: new MyApp( ),
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
    return new Scaffold(

      appBar: AppBar(
        title: Text('iFaaS'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // app1,
          SizedBox(
            height: 50,
          ),
          Text(
            'iFaaS',
            style: TextStyle(color: Colors.blue, fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: _gotoc1,
              child: Text(
                "show Marin Analysis",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: _gotoc2,
              child: Text(
                "show Profit",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonTheme(
            minWidth: 200.0,
            height: 50.0,
            child: RaisedButton(
              onPressed: _gotoc3,
              child: Text(
                "sales input",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                'https://google.github.io/charts/flutter/example/legends/series_legend_options_full.png',
                height: 100,
                //width: 200,
                fit: BoxFit.fitWidth,
              ),
              Image.network(
                'https://google.github.io/charts/flutter/example/scatter_plot_charts/bucketing_axis_full.png',
                height: 100,
                // width: 200,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                'https://google.github.io/charts/flutter/example/bar_charts/grouped_stacked_full.png',
                height: 100,
                //width: 200,
                fit: BoxFit.fitWidth,
              ),
              Image.network(
                'https://google.github.io/charts/flutter/example/line_charts/stacked_area_custom_color_full.png',
                height: 100,
                // width: 200,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ],
      )),
    );
  }

  _gotoc1() {
    var app1 = NumericComboLineBarChart.withSampleData();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => app1),
    );
  }

  _gotoc2() {
    var app1 = DonutAutoLabelChart.withSampleData();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => app1),
    );
  }

  _gotoc3() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => inputv()),
    );
  }
}
