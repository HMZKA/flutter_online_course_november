import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/cubit.dart';
import 'package:flutter_online_course/search_screen.dart';
import 'package:flutter_online_course/states.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit().get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
            title: Text('NewsApp'),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SearchScreen(),
                  ));
                },
              ),
              IconButton(
                icon: Icon(Icons.brightness_4),
                onPressed: () {
                  cubit.changeTheme();
                },
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.index,
              onTap: (value) {
                cubit.changeNavBar(value);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.business), label: 'Business'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.sports), label: 'Sports'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.news_solid), label: 'Other')
              ]),
          body: cubit.screens[cubit.index],
        );
      },
    );
  }
}
