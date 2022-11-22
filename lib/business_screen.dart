import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/components.dart';
import 'package:flutter_online_course/cubit.dart';
import 'package:flutter_online_course/states.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit().get(context);
        var model = AppCubit().get(context).businessModel;
        return BuildCondition(
          condition: model != null,
          builder: (context) => ListView.builder(
              itemBuilder: (context, index) =>
                  buildNewsItem(model.articles[index], context),
              itemCount: model!.articles.length),
          fallback: (context) => Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
