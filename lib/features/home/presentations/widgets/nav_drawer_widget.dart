import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ultimit/features/home/presentations/models/nav_item_model.dart';

import '../../../../shared/colors.dart';
import '../bloc/navigations/navigation_drawer_bloc.dart';

class NavDrawerWidget extends StatefulWidget {
  NavDrawerWidget({super.key});

  @override
  State<NavDrawerWidget> createState() => _NavDrawerWidgetState();
}

class _NavDrawerWidgetState extends State<NavDrawerWidget> {
  List<NavItem> listView = <NavItem>[
    NavItem(
        label: "Home",
        subNavItem: [],
        icon: const Icon(Icons.widgets, size: 18,),
       ),
    NavItem(
        label: "Point of sales",
        subNavItem: [
          NavItem(
              subNavItem: [],
              label: "Sub Point of sales 1",),
          NavItem(
              subNavItem: [],
              label: "Sub Point of sales 2",),
          NavItem(
              subNavItem: [],
              label: "Sub Point of sales 3",),
          NavItem(
              subNavItem: [],
              label: "Sub Point of sales 4",),
          NavItem(
              subNavItem: [],
              label: "Sub Point of sales 5",),
          NavItem(
              subNavItem: [],
              label: "Sub Point of sales 6",),
        ],
        icon: const Icon(Icons.point_of_sale, size: 18,)),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationDrawerBloc, NavigationDrawerState>(
      builder: (context, state) {
        return AnimatedOpacity(
          opacity:  state.isOpen ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Visibility(
            visible: state.isOpen,
            child: Drawer(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      child: Image.asset(
                        "img/onyx_ix_logo.png",
                      ),
                    ),
                  ),
                  ...listView.map((dest) => dest.subNavItem.isNotEmpty
                      ? ExpansionTile(
                    shape: const Border(top: BorderSide.none),
                          leading: dest.icon,
                          childrenPadding: const EdgeInsets.symmetric(horizontal: 32
                              ,vertical: 1),
                          expandedCrossAxisAlignment: CrossAxisAlignment.start,
                          title: Text(dest.label),
                          children: [
                            ...dest.subNavItem.map((subDest) => ListTile(
            
                              contentPadding: EdgeInsets.zero,
                              selected: context
                                      .read<NavigationDrawerBloc>()
                                      .state
                                      .selectedIndex ==
                                  dest.label,
                              selectedColor: colorBlue,
                              title: Text(subDest.label),
            
                            ))
                          ],
                        )
                      : ListTile(
                          selected: context
                                  .read<NavigationDrawerBloc>()
                                  .state
                                  .selectedIndex ==
                              dest.label,
                          selectedColor: colorBlue,
                          title: Text(dest.label),
                          leading: dest.icon,
                        )),
                ],
              ),
            ),
          ),
        );
        /* return Visibility(
          maintainState: true,
          visible: state.isOpen,
          child: NavigationDrawer(
              backgroundColor: Colors.white,
              tilePadding: EdgeInsets.all(0),
              indicatorShape: BoxBorder.lerp(
                  Border.all(color: colorPrup), Border.all(width: 0.1), 10.0),
              selectedIndex:
                  context.read<NavigationDrawerBloc>().state.selectedIndex,
              onDestinationSelected: (dst) =>
                  BlocProvider.of<NavigationDrawerBloc>(context)
                    ..add(NavigateTo(selectedIndex: dst)),
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 80,
                    height: 80,
                    child: Image.asset(
                      "img/onyx_ix_logo.png",
                    ),
                  ),
                ),
                ...listView.map((dest) => dest.subNavItem.isNotEmpty
                    ? ExpansionTile(
                        title: Text(dest.label),
                        children: _getSubNavItem(dest.subNavItem),
                      )
                    : NavigationDestination(
                        label: dest.label,
                        icon: dest.icon ?? Icon(Icons.book,size: 18,),
                        selectedIcon: dest.selectedIcon ?? Icon(Icons.book,size: 18,),
                        tooltip: dest.label,
                      )),
              ]),
        );*/
      },
    );
  }

  _getSubNavItem(List<NavItem> items) {
    List<Widget> subNavItemList = <Widget>[];
    items.map((dest) => subNavItemList.add(
          Text(dest.label),
        ));
    return subNavItemList;
  }
}
