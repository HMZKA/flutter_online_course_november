import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/cubit.dart';
import 'package:flutter_online_course/dio_helper.dart';
import 'package:flutter_online_course/main_screen.dart';
import 'package:flutter_online_course/webview_screen.dart';

void main() {
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()
        ..getBusiness()
        ..getSport(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
