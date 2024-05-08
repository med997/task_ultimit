import 'package:flutter/material.dart';
import 'package:task_ultimit/features/home/presentations/widgets/cards_dashboard_widget.dart';
import 'package:task_ultimit/features/home/presentations/widgets/list_view_activity.dart';
import 'package:task_ultimit/features/home/presentations/widgets/pie_chart_widget.dart';
import 'package:task_ultimit/shared/colors.dart';

import '../widgets/line_chart_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCards(),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                PieChartWidget(),
                SizedBox(width: 20,),
                LineChartWidget(),

              ],

            ),

          ],
        ));
  }
}

_buildCards() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CardDashboardWidget(
          amount: "\$25,890",
          title: "Total Seals",
          bottomTxt: "up from pass Week",
          icons: Icon(
            Icons.pie_chart_outline,
            color: colorIndector,
            size: 36,
          )),
      CardDashboardWidget(
          amount: "\$25,890",
          title: "Total Order",
          bottomTxt: "down from pass Week",
          icons: Icon(
            Icons.pie_chart_outline,
            color: colorIndector,
            size: 36,
          )),
      CardDashboardWidget(
          amount: "183.35M",
          title: "Total customer",
          bottomTxt: "down from pass Week",
          icons: Icon(
            Icons.book_outlined,
            color: colorIndector,
            size: 36,
          )),
    ],
  );
}
