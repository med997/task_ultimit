part of 'navigation_drawer_bloc.dart';

sealed class NavigationDrawerState extends Equatable {
  final String selectedIndex;
  final bool isOpen;

  NavigationDrawerState({required this.isOpen,required this.selectedIndex});

  @override
  List<Object> get props => [selectedIndex,isOpen];
}

final class NavigationDrawerInitial extends NavigationDrawerState {
  NavigationDrawerInitial({required super.isOpen, required super.selectedIndex});

}

final class NavigationDrawerChanged extends NavigationDrawerState {
  NavigationDrawerChanged({required super.isOpen, required super.selectedIndex});

}

final class NavigationDrawerOpen extends NavigationDrawerState {
  NavigationDrawerOpen({required super.isOpen, required super.selectedIndex});
}
