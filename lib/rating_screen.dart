import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/cubit.dart';
import 'package:flutter_online_course/states.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class RatingScreen extends StatelessWidget {
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
            title: Text('Rating Star'),
          ),
          body: Center(
            child: RatingStars(
              value: cubit.valuechange,
              valueLabelVisibility: false,
              animationDuration: Duration(seconds: 2),
              onValueChanged: (value) {
                cubit.rating(value);
              },
            ),
          ),
        );
      },
    );
  }
}
