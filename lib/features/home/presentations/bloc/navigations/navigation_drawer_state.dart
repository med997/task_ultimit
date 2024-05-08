part of 'navigation_drawer_bloc.dart';

sealed class NavigationDrawerState extends Equatable {
  final int selectedIndex;

  const NavigationDrawerState({required this.selectedIndex});

  @override
  List<Object> get props => [selectedIndex];
}

final class NavigationDrawerInitial extends NavigationDrawerState {
  const  NavigationDrawerInitial({required super.selectedIndex});
}
final class NavigationDrawerChanged extends NavigationDrawerState {
  const  NavigationDrawerChanged({required super.selectedIndex});
}
