import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());

  AppCubit get(context) => BlocProvider.of(context);

  bool isScure = true;
  var scureIcon = Icons.remove_red_eye;
  changeScure() {
    isScure = !isScure;

    isScure
        ? scureIcon = Icons.visibility_off
        : scureIcon = Icons.remove_red_eye;
    emit(AppChangeScureState());
  }

  double width = 100;
  double height = 100;
  var color = Colors.black;
  double r = 0;
  animate() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (height == 100) {
        height = 200;
        width = 200;
        color = Colors.red;
        r = 50;
        emit(AppAnimateState());
      } else {
        height = 100;
        width = 100;
        color = Colors.black;
        r = 0;
        emit(AppAnimateState());
      }
    });
  }

  double valuechange = 0;
  rating(ratingvalue) {
    valuechange = ratingvalue;
    emit(AppRatingState());
  }
}
