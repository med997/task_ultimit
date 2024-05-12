import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:task_ultimit/shared/colors.dart';

import '../../../../shared/enums.dart';

class LineChartWidget extends StatelessWidget {
  final LineChartType lineChartType;

  LineChartWidget({super.key, required this.lineChartType});

  List<_ChartData> chartData2Line = <_ChartData>[
    _ChartData(x: "jan", y: 21, y2: 28),
    _ChartData(x: "Feb", y: 24, y2: 44),
    _ChartData(x: "Mrch", y: 36, y2: 48),
    _ChartData(x: "Apr", y: 38, y2: 50),
    _ChartData(x: "May", y: 54, y2: 66),
    _ChartData(x: "jun", y: 57, y2: 78),
    _ChartData(x: "jly", y: 70, y2: 84)
  ];
  List<_ChartData> chartDataOneLine = <_ChartData>[
    _ChartData(x: "11jan", y: 21, ),
    _ChartData(x: "12jan", y: 24, ),
    _ChartData(x: "13jan", y: 36,),
    _ChartData(x: "14jan", y: 38, ),
    _ChartData(x: "15jan", y: 54, ),
    _ChartData(x: "16jan", y: 57, ),
    _ChartData(x: "17jan", y: 70, )
  ];

  @override
  Widget build(BuildContext context) {
    return _buildDefaultLineChart();
  }

  _buildDefaultLineChart() {
    return Card(
      child: Padding(
        padding:     lineChartType == LineChartType.twoLine ?
        const EdgeInsets.all(8.0):const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(lineChartType.name.toString()),
             const Divider(height: 15,),
            lineChartType == LineChartType.twoLine ?
            _twoLineChartBuilder():_oneLineChartBuilder()
          ],
        ),
      ),
    );
  }

  _twoLineChartBuilder() {
    return SfCartesianChart(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      plotAreaBorderWidth: 0,
      legend: const Legend(
          isVisible: false, overflowMode: LegendItemOverflowMode.none),
      primaryXAxis: const CategoryAxis(
          majorGridLines: MajorGridLines(width: 0),
          labelPlacement: LabelPlacement.betweenTicks),
      primaryYAxis: const NumericAxis(
        tickPosition: TickPosition.inside,
          labelFormat: '{value}%',
          axisLine: AxisLine(width: 0),
          majorTickLines: MajorTickLines(color: Colors.transparent)),
      series: _getDefaultLineSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }
  _oneLineChartBuilder() {
    return SfCartesianChart(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      plotAreaBorderWidth: 0,
      legend: const Legend(
          isVisible: false, overflowMode: LegendItemOverflowMode.scroll),
      primaryXAxis: const CategoryAxis(
          majorGridLines: MajorGridLines(width: 0),
          labelPlacement: LabelPlacement.betweenTicks),
      primaryYAxis: const NumericAxis(
          labelFormat: '\${value}K',
          axisLine: AxisLine(width: 0),
          majorTickLines: MajorTickLines(color: Colors.transparent)),
      series: _getOneLineSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<LineSeries<_ChartData, String>> _getDefaultLineSeries() {
    return <LineSeries<_ChartData, String>>[
      LineSeries<_ChartData, String>(
          color: colorOrange,

          dataSource: chartData2Line,
          xValueMapper: (_ChartData sales, _) => sales.x as String,
          yValueMapper: (_ChartData sales, _) => sales.y,
          name: ' ',
          markerSettings: const MarkerSettings(isVisible: true)),
      LineSeries<_ChartData, String>(
          color: colorGray,
          dataSource: chartData2Line,

          name: ' ',
          xValueMapper: (_ChartData sales, _) => sales.x as String,
          yValueMapper: (_ChartData sales, _) => sales.y2,
          markerSettings: const MarkerSettings(isVisible: true)),
    ];
  }
  List<SplineAreaSeries<_ChartData, String>> _getOneLineSeries() {
    return <SplineAreaSeries<_ChartData, String>>[
      SplineAreaSeries<_ChartData, String>(
        dataSource: chartDataOneLine,
        color:colorBlue.withOpacity(0.3),
        borderColor: colorBlue,
        name: '',
        xValueMapper: (_ChartData sales, _) => sales.x as String,
        yValueMapper: (_ChartData sales, _) => sales.y,
      ),
    ];
  }
}

class _ChartData {
  final String x;
  final double y;
  final double? y2;

  _ChartData({required this.x, required this.y, this.y2});
}
