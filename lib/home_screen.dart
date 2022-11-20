import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/cubit.dart';
import 'package:flutter_online_course/dio_helper.dart';
import 'package:flutter_online_course/states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(onPressed: () {}),
        );
      },
    );
  }
}
