import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/states.dart';

import 'cubit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = AppCubit().get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('My First Animation'),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          body: Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              decoration: BoxDecoration(
                  color: cubit.color,
                  borderRadius: BorderRadius.circular(cubit.r)),
              height: cubit.height,
              width: cubit.width,
            ),
          ),
        );
      },
    );
  }
}
