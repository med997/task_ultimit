import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            useMaterial3: false,
            textTheme: GoogleFonts.readexProTextTheme(),
            brightness: Brightness.light,
            colorScheme: const ColorScheme.light()
                .copyWith(background: colorBg2, primary: colorBlue ),
            drawerTheme: const DrawerThemeData(
              elevation: 0,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            cardTheme: const CardTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))))),
        home: const HomePage(),
      ),
    );
  }
}
