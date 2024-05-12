
import 'package:flutter/material.dart';

class NavItem {
  final String label ;
  final Widget? icon;
  final Widget? selectedIcon;
  final List<NavItem> subNavItem;


  NavItem({required this.label,  this.icon,
     this.selectedIcon, required this.subNavItem});
}