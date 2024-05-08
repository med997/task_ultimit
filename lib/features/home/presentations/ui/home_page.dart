import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ultimit/features/home/presentations/ui/dashboard_page.dart';
import 'package:task_ultimit/features/home/presentations/widgets/header_widget.dart';
import 'package:task_ultimit/features/home/presentations/widgets/nav_drawer_widget.dart';

import '../widgets/list_view_activity.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _appBarBuild(),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return SafeArea(
      child: Row(
        children: [
          NavDrawerWidget(),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: const HeaderWidget(),
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
          )
        ],
      ),
    );
  }
}

_appBarBuild() => AppBar(
      title: Text('task app'),
    );
