import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DonutAutoLabelChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  DonutAutoLabelChart(this.seriesList, {this.animate});

  /// Creates a [PieChart] with sample data and no transition.
  factory DonutAutoLabelChart.withSampleData() {
    return new DonutAutoLabelChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(),
      body: new charts.PieChart(seriesList,
          animate: animate,
          // Configure the width of the pie slices to 60px. The remaining space in
          // the chart will be left as a hole in the center.
          //
          // [ArcLabelDecorator] will automatically position the label inside the
          // arc if the label will fit. If the label will not fit, it will draw
          // outside of the arc with a leader line. Labels can always display
          // inside or outside using [LabelPosition].
          //
          // Text style for inside / outside can be controlled independently by
          // setting [insideLabelStyleSpec] and [outsideLabelStyleSpec].
          //
          // Example configuring different styles for inside/outside:
          //       new charts.ArcLabelDecorator(
          //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
          //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
          defaultRenderer: new charts.ArcRendererConfig(
              arcWidth: 60,
              arcRendererDecorators: [new charts.ArcLabelDecorator()])),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 30,'cake1'),
      new LinearSales(1, 30,'cake2'),
      new LinearSales(2, 40,'cake3'),
      new LinearSales(3, 20,'cake4'),
      new LinearSales(4, 40,'cake5'),
      new LinearSales(5, 50,'cake6'),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearSales row, _) => '${row.name}: ${row.sales}',
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;
  final String name;

  LinearSales(this.year, this.sales, this.name);
}