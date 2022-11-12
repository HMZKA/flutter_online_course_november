import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/states.dart';

import 'cubit.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                  onPressed: () {
                    AppCubit().get(context).minusCount();
                  },
                  child: Text(
                    'Minus',
                    style: TextStyle(fontSize: 18),
                  )),
              Text(
                '${AppCubit().get(context).num}',
                style: TextStyle(fontSize: 18),
              ),
              TextButton(
                  onPressed: () {
                    AppCubit().get(context).plusCount();
                  },
                  child: Text(
                    'Plus',
                    style: TextStyle(fontSize: 18),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
