import 'package:get_it/get_it.dart';
import 'package:task_ultimit/features/home/presentations/bloc/navigations/navigation_drawer_bloc.dart';

final getIt = GetIt.instance;

Future<void> init() async {

  /// CREATE FACTORY OF BLOC
  getIt.registerFactory(() => NavigationDrawerBloc());

}
