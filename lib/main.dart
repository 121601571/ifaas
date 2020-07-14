import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'package:charts_flutter/flutter.dart';
import 'package:charts_flutter/src/text_element.dart';
import 'package:charts_flutter/src/text_style.dart' as style;

var app1 = NumericComboLineBarChart.withSampleData();

void main() => runApp(app1);

class NumericComboLineBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  NumericComboLineBarChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory NumericComboLineBarChart.withSampleData() {
    return new NumericComboLineBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return
        new Scaffold(
          appBar: AppBar(
            title: Text('Margin Analysis'),
          ),
          body: new charts.NumericComboChart(seriesList,
              animate: animate,
              // Configure the default renderer as a line renderer. This will be used
              // for any series that does not define a rendererIdKey.
              defaultRenderer:  new charts.BarRendererConfig(
                  groupingType: charts.BarGroupingType.stacked),
              // Custom renderer configuration for the bar series.
              customSeriesRenderers: [
                new charts.LineRendererConfig(
                  // ID used to link series to this renderer.
                    customRendererId: 'customLine')
              ],
//            behaviors: [
//              LinePointHighlighter(
//                  symbolRenderer: CustomCircleSymbolRenderer()
//              )
//            ],
            selectionModels: [
              SelectionModelConfig(
                  changedListener: (SelectionModel model) {
                    if(model.hasDatumSelection)
                      //print(model.selectedSeries[0].measureFn(model.selectedDatum[2].index));
                      //print(model.selectedDatum[2].datum.sales);
                      Toast.show('Actual margin'+model.selectedDatum[2].datum.sales.toString() , context, duration: Toast.LENGTH_SHORT, gravity:  Toast.CENTER);

                  }
              )
            ],



          ),
        );



  }



  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final desktopSalesData = [
      new LinearSales(0, 10),
      new LinearSales(1, 20),
      new LinearSales(2, 30),
      new LinearSales(3, 25),
      new LinearSales(4, 15),
      new LinearSales(5, 20),
    ];

    final tableSalesData = [
      new LinearSales(0, 20),
      new LinearSales(1, 30),
      new LinearSales(2, 10),
      new LinearSales(3, 10),
      new LinearSales(4, 15),
      new LinearSales(5, 10),
    ];

    final mobileSalesData = [
      new LinearSales(0, 80),
      new LinearSales(1, 70),
      new LinearSales(2, 85),
      new LinearSales(3, 70),
      new LinearSales(4, 90),
      new LinearSales(5, 80),
    ];


    final mobileSalesData2 = [
      new LinearSales(0, 50),
      new LinearSales(1, 60),
      new LinearSales(2, 55),
      new LinearSales(3, 60),
      new LinearSales(4, 55),
      new LinearSales(5, 65),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Desktop',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: desktopSalesData,
      ),
        // Configure our custom bar renderer for this series.
      //  ..setAttribute(charts.rendererIdKey, 'customBar'),
      new charts.Series<LinearSales, int>(
        id: 'Tablet',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: tableSalesData,
      ),
        // Configure our custom bar renderer for this series.
       // ..setAttribute(charts.rendererIdKey, 'customBar'),
      new charts.Series<LinearSales, int>(
          id: 'Mobile',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.sales,
          data: mobileSalesData)
        ..setAttribute(charts.rendererIdKey, 'customLine'),

      new charts.Series<LinearSales, int>(
          id: 'Mobile',
          colorFn: (_, __) => charts.MaterialPalette.gray.shadeDefault,
          //dashPattern: [8, 3, 2, 3],
          dashPatternFn: (LinearSales sales, _) => [8,2,2,3],
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.sales,
          data: mobileSalesData2)
        ..setAttribute(charts.rendererIdKey, 'customLine'),


    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}


