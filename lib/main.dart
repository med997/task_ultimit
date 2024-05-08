import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ultimit/features/home/presentations/bloc/navigations/navigation_drawer_bloc.dart';
import 'package:task_ultimit/features/home/presentations/ui/home_page.dart';
import 'package:task_ultimit/shared/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationDrawerBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          backgroundColor: colorBg,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,

        ),
        home: const HomePage(),
      ),
    );
  }
}

