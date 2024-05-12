import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:polygon_chart/polygon_chart.dart';

import '../../../../shared/colors.dart';
import '../../../../shared/dimension.dart';

class RadarChartWidget extends StatelessWidget {
  const RadarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 9),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Visits by Day",
                  style: TextStyle(fontSize: largSizeFont),
                ),
                Text(
                  "Total 248.5K visits",
                  style: TextStyle(fontSize: smSizeFont),
                )
              ],
            ),
          ),
          _buildRadarWidget()
        ],
      ),
    );
  }

  _buildRadarWidget() {
    List<double> ticks = [3, 21, 25, 71, 100];
    var features = [
      'Sat',
      'Sun',
      'Mon',
      'Tus',
      'Wed',
      'Thu',
      'Fri',
    ];
    // create data for showing in the polygon
    var data = [
      [50, 100, 90, 80, 70, 40, 70, 30],
      [50, 50, 80, 90, 51, 40, 30, 10],
    ];
    return SizedBox(
      height: 350,
      width: 500,
      child: ChartPage(
        ticks: ticks,
        graphColors: [colorBlue.withOpacity(0.5), colorRed.withOpacity(0.5)],
        features: features,
        data: data,
        axisColor: colorGray.withOpacity(0.5),
        outlineColor: colorGray.withOpacity(0.5),
        reverseAxis: true,

        sides: 7,
      ),
    );
  }
}
