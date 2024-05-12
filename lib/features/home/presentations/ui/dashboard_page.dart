import 'package:flutter/material.dart';
import 'package:task_ultimit/features/home/presentations/widgets/cards_dashboard_widget.dart';
import 'package:task_ultimit/features/home/presentations/widgets/list_view_activity.dart';
import 'package:task_ultimit/features/home/presentations/widgets/pie_chart_widget.dart';
import 'package:task_ultimit/features/home/presentations/widgets/radar_chart_widget.dart';
import 'package:task_ultimit/shared/colors.dart';
import 'package:task_ultimit/shared/enums.dart';

import '../../../../core/widgets/responsive.dart';
import '../widgets/line_chart_widget.dart';
import '../widgets/table_order_widget.dart';
import '../widgets/timeline_activity_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          if (!Responsive.isDesktop(context))
            ..._buildDashboardMobile()
          else
            ..._buildDashboardDesktop(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: LineChartWidget(
                  lineChartType: LineChartType.oneLine,
                ),
              ),
            ],
          ),
          TableOrderWidget()
        ],
      ),
    );
  }
}

_widgetDivider() {
  return const SizedBox(height: 10);
}

List<Widget> _buildDashboardMobile() {
  return <Widget>[
    _buildCardsMobile(),
    _widgetDivider(),
    PieChartWidget(),

    _widgetDivider(),
    LineChartWidget(lineChartType: LineChartType.twoLine),
    _widgetDivider(),
    RadarChartWidget(),
    _widgetDivider(),
    TimeLineActivityWidget(),
  ];
}

List<Widget> _buildDashboardDesktop() {
  return <Widget>[
    _widgetDivider(),
    _buildCardsDeskTop(),
    _widgetDivider(),
    _buildPieAndLineChartDesktop(),
    _widgetDivider(),
    _buildRadarChartDesktop(),
  ];
}

_buildPieAndLineChartDesktop() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: [
      Flexible(
        flex: 1,
        child: PieChartWidget(),
      ),
      Flexible(
        flex: 1,
        child: LineChartWidget(
          lineChartType: LineChartType.twoLine,
        ),
      ),
    ],
  );
}

_buildRadarChartDesktop() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: [
      Flexible(
        flex: 2,
        child: RadarChartWidget(),
      ),
      Flexible(
        flex: 1,
        child: TimeLineActivityWidget(),
      ),
    ],
  );
}

_buildCardsDeskTop() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Flexible(
        flex: 1,
        child: CardDashboardWidget(
            amount: "\$25,890",
            title: "Total Seals",
            bottomTxt: "up from pass Week",
            icons: Icon(
              Icons.pie_chart_outline,
              weight: 0.1,
              opticalSize: 1,
              color: colorCrdIcon,
              size: 28,
            )),
      ),
      Flexible(
          flex: 1,
          child: CardDashboardWidget(
              amount: "\$25,890",
              title: "Total Order",
              bottomTxt: "down from pass Week",
              icons: Icon(
                Icons.pie_chart_outline_outlined,
                weight: 0.1,
                opticalSize: 1,
                color: colorCrdIcon,
                size: 28,
              ))),
      Flexible(
          flex: 1,
          child: CardDashboardWidget(
              amount: "183.35M",
              title: "Total customer",
              bottomTxt: "down from pass Week",
              icons: Icon(
                Icons.book_outlined,
                weight: 0.1,
                opticalSize: 1,
                color: colorCrdIcon,
                size: 28,
              ))),
    ],
  );
}

_buildCardsMobile() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      CardDashboardWidget(
          amount: "\$25,890",
          title: "Total Seals",
          bottomTxt: "up from pass Week",
          icons: Icon(
            Icons.pie_chart_outline,
            weight: 0.1,
            opticalSize: 1,
            color: colorCrdIcon,
            size: 28,
          )),
      CardDashboardWidget(
          amount: "\$25,890",
          title: "Total Order",
          bottomTxt: "down from pass Week",
          icons: Icon(
            Icons.pie_chart_outline_outlined,
            weight: 0.1,
            opticalSize: 1,
            color: colorCrdIcon,
            size: 28,
          )),
      CardDashboardWidget(
          amount: "183.35M",
          title: "Total customer",
          bottomTxt: "down from pass Week",
          icons: Icon(
            Icons.book_outlined,
            weight: 0.1,
            opticalSize: 1,
            color: colorCrdIcon,
            size: 28,
          )),
    ],
  );
}
