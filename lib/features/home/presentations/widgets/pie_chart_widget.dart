import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:task_ultimit/shared/colors.dart';

class PieChartWidget extends StatelessWidget {
  PieChartWidget({super.key});

  List<_PieData> pieData = <_PieData>[
    _PieData("Activated", 33, colorDarkOrange, "33%"),
    _PieData("Pending", 42, colorDarkGreen, "42%"),
    _PieData("Activated", 25, colorBlue, "25%")
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           _buildCustomLegend(),
          SfCircularChart(
              margin: EdgeInsets.all(0),
              legend: Legend(isVisible: false),

              series: <PieSeries<_PieData, String>>[
                PieSeries<_PieData, String>(
                    explode: true,
                    explodeIndex: 0,
                    dataSource: pieData,
                    xValueMapper: (_PieData data, _) => data.xData,
                    yValueMapper: (_PieData data, _) => data.yData,
                    dataLabelMapper: (_PieData data, _) => data.text,
                    pointColorMapper: (datum, index) => datum.color,
                    dataLabelSettings: const DataLabelSettings(
                      isVisible: true,
                    )),
              ])
        ],
      ),
    );
  }

  _buildCustomLegend() {
    return SizedBox(
      width: 250,
      height: 70,


      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            children: [
              Text("48484", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Activated"),
            ],
          ),
        ),
      ),
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, this.color, [this.text]);

  final String xData;
  final Color color;
  final num yData;
  String? text;
}
