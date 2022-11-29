import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/cubit/app_cubit.dart';
import 'package:flutter_online_course/dio_helper.dart';
import 'package:flutter_online_course/login_screen.dart';

void main() {
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child:
          MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen()),
    );
  }
}
