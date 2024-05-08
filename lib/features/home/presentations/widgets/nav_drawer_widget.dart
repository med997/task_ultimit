import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ultimit/features/home/presentations/models/nav_item_model.dart';

import '../../../../shared/colors.dart';
import '../bloc/navigations/navigation_drawer_bloc.dart';



class NavDrawerWidget extends StatelessWidget {
  NavDrawerWidget({super.key});

  List<NavItem> listView = <NavItem>[
    NavItem(
        label: "Home",
        icon: Icon(Icons.widgets_outlined, ),
        selectedIcon: Icon(Icons.widgets, color: colorIndector,)),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationDrawerBloc, NavigationDrawerState>(
      builder: (context, state) {
        return NavigationDrawer(

            selectedIndex:
            context
                .read<NavigationDrawerBloc>()
                .state
                .selectedIndex,
            onDestinationSelected: (dst) =>
            BlocProvider.of<NavigationDrawerBloc>(context)
              ..add(NavigateTo(selectedIndex: dst)),
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 80,
                  height: 50,
                  child: Image.asset("img/onyx_ix_logo.png",),
                ),
              ),
              ...listView.map((NavItem dest) {
                return NavigationDrawerDestination(
                  label: Text(dest.label),
                  icon: dest.icon,
                  selectedIcon: dest.selectedIcon,
                );
              })
            ]);
      },
    );
  }
}
