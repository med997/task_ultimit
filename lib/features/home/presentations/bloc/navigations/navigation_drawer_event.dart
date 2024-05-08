part of 'navigation_drawer_bloc.dart';

sealed class NavigationDrawerEvent extends Equatable {
  const NavigationDrawerEvent();
}

final class NavigateTo extends NavigationDrawerEvent{
  final int selectedIndex ;

  const NavigateTo({required this.selectedIndex});

  @override
  List<Object?> get props => [selectedIndex];


}
