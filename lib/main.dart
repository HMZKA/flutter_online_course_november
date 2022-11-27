import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/chache_helper.dart';
import 'package:flutter_online_course/cubit.dart';
import 'package:flutter_online_course/dio_helper.dart';
import 'package:flutter_online_course/main_screen.dart';
import 'package:flutter_online_course/states.dart';
import 'package:flutter_online_course/webview_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()
        ..getBusiness()
        ..getSport(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var isDark = AppCubit().get(context).isDark;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.deepOrange,
                appBarTheme: AppBarTheme(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black),
                scaffoldBackgroundColor: Colors.grey[50],
                textTheme: const TextTheme(
                    bodyText1:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500))),
            themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: ThemeData(
                primarySwatch: Colors.cyan,
                scaffoldBackgroundColor: Colors.blueGrey[700],
                appBarTheme: AppBarTheme(
                    backgroundColor: Colors.blueGrey[700],
                    foregroundColor: Colors.white),
                textTheme: const TextTheme(
                    bodyText1: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    backgroundColor: Colors.blueGrey[700]),
                cardColor: Colors.blueGrey),
            home: MainScreen(),
          );
        },
      ),
    );
  }
}
