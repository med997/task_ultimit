import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_drawer_event.dart';

part 'navigation_drawer_state.dart';

class NavigationDrawerBloc
    extends Bloc<NavigationDrawerEvent, NavigationDrawerState> {
  NavigationDrawerBloc() : super(const NavigationDrawerInitial(selectedIndex: 0)) {
    on<NavigateTo>((event, emit) {
      if (event.selectedIndex != state.selectedIndex) {
        emit(NavigationDrawerChanged(selectedIndex: event.selectedIndex));
      }
    });
  }
}
