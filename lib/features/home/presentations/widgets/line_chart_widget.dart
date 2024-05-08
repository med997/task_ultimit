import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartWidget extends StatelessWidget {
  LineChartWidget({super.key});

  List<_ChartData> chartData = <_ChartData>[
    _ChartData(2005, 21, 28),
    _ChartData(2006, 24, 44),
    _ChartData(2007, 36, 48),
    _ChartData(2008, 38, 50),
    _ChartData(2009, 54, 66),
    _ChartData(2010, 57, 78),
    _ChartData(2011, 70, 84)
  ];

  @override
  Widget build(BuildContext context) {
    return _buildDefaultLineChart();
  }

  _buildDefaultLineChart() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          legend: Legend(
              isVisible: false, overflowMode: LegendItemOverflowMode.none),
          primaryXAxis: const NumericAxis(
              edgeLabelPlacement: EdgeLabelPlacement.shift,
              interval: 2,
              majorGridLines: MajorGridLines(width: 0)),
          primaryYAxis: const NumericAxis(
              labelFormat: '{value}%',
              axisLine: AxisLine(width: 0),
              majorTickLines: MajorTickLines(color: Colors.transparent)),
          series: _getDefaultLineSeries(),
          tooltipBehavior: TooltipBehavior(enable: true),
        ),
      ),
    );
  }

  List<LineSeries<_ChartData, num>> _getDefaultLineSeries() {
    return <LineSeries<_ChartData, num>>[
      LineSeries<_ChartData, num>(
          dataSource: chartData,
          xValueMapper: (_ChartData sales, _) => sales.x,
          yValueMapper: (_ChartData sales, _) => sales.y,
          name: 'Germany',
          markerSettings: const MarkerSettings(isVisible: true)),
      LineSeries<_ChartData, num>(
          dataSource: chartData,
          name: 'England',
          xValueMapper: (_ChartData sales, _) => sales.x,
          yValueMapper: (_ChartData sales, _) => sales.y2,
          markerSettings: const MarkerSettings(isVisible: true))
    ];
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.y2);

  final double x;
  final double y;
  final double y2;
}
