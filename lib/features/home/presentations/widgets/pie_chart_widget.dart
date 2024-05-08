import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartWidget extends StatelessWidget {
  PieChartWidget({super.key});

  List<_PieData> pieData = <_PieData>[
    _PieData("Activated", 33, "33%"),
    _PieData("Pending", 42, "42%"),
    _PieData("Activated", 25, "25%")
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
          Column(
          children: [
          Text("48484", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Activated"),
            ],
          ),
          SizedBox(width: 10,),
          Column(
            children: [
              Text("48484", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Pending"),
             ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Text("48484", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Activated"),
                ],
              ),
            ],
          ),
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
                          dataLabelSettings: DataLabelSettings(isVisible: true)),
                    ])

        ],
      ),
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);

  final String xData;
  final num yData;
  String? text;
}
