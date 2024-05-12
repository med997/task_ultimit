part of 'navigation_drawer_bloc.dart';

sealed class NavigationDrawerEvent extends Equatable {
  const NavigationDrawerEvent();
}

final class NavigateTo extends NavigationDrawerEvent {
  final String selectedIndex;

  const NavigateTo({required this.selectedIndex});

  @override
  List<Object?> get props => [selectedIndex];
}

final class ChangeDrawerView extends NavigationDrawerEvent {
  final bool isOpen;

  const ChangeDrawerView({required this.isOpen});

  @override
  List<Object?> get props => [isOpen];
}
