import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_ultimit/core/widgets/responsive.dart';
import 'package:task_ultimit/features/home/presentations/ui/dashboard_page.dart';
import 'package:task_ultimit/features/home/presentations/widgets/header_widget.dart';
import 'package:task_ultimit/features/home/presentations/widgets/nav_drawer_widget.dart';

import '../widgets/list_view_activity.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Responsive(
      desktop: _buildBodyDesktop(),
      tablet: _buildBodyTablet(),
      mobile: _buildBodyMobile(),
    ));
  }

  _buildBodyDesktop() {
    return SafeArea(
      child: Row(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 250),
            child: NavDrawerWidget(),
          ),
          Flexible(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                    Padding(
                    padding: EdgeInsets.all(10),
                    child: HeaderWidget(scaffoldKey: null,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DashboardPage(),
                      ListViewActivityWidget(),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildBodyTablet() {
    return SafeArea(
      child: Row(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 250),
            child: NavDrawerWidget(),
          ),
          Flexible(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                   Padding(
                    padding: EdgeInsets.all(10),
                    child: HeaderWidget(scaffoldKey: null,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DashboardPage(),

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildBodyMobile() {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child: NavDrawerWidget(),
      ),
      body:  SafeArea(
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                      Padding(
                      padding: EdgeInsets.all(10),
                      child: HeaderWidget(scaffoldKey: _scaffoldKey,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DashboardPage(),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
