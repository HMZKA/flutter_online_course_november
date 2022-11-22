import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/cubit.dart';
import 'package:flutter_online_course/states.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Search'),
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'What are you looking for...'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
