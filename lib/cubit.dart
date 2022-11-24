import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/business_screen.dart';
import 'package:flutter_online_course/dio_helper.dart';
import 'package:flutter_online_course/news_model.dart';
import 'package:flutter_online_course/other_screen.dart';
import 'package:flutter_online_course/sport_screen.dart';
import 'package:flutter_online_course/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());

  AppCubit get(context) => BlocProvider.of(context);

  int index = 0;
  List screens = [BusinessScreen(), SportScreen(), OtherScreen()];
  changeNavBar(value) {
    index = value;
    emit(AppBottomNavBarchangeState());
  }

  NewsModel? businessModel;
  getBusiness() {
    emit(AppGetBusinessLoadingState());
    DioHelper.getData('top-headlines', {
      'country': 'us',
      'category': 'business',
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    }).then((value) {
      businessModel = NewsModel.fromJson(value?.data);

      emit(AppGetBusinessSucceedState());
    }).catchError((error) {
      print(error.toString());
      emit(AppGetBusinessErrorState());
    });
  }

  NewsModel? sportModel;
  getSport() {
    emit(AppGetSportLoadingState());
    DioHelper.getData('top-headlines', {
      'country': 'us',
      'category': 'sport',
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    }).then((value) {
      sportModel = NewsModel.fromJson(value?.data);
      emit(AppGetSportSucceedState());
    }).catchError((error) {
      print(error.toString());
      emit(AppGetSportErrorState());
    });
  }

  NewsModel? searchModel;
  getSearch(search) {
    emit(AppGetSearchLoadingState());
    DioHelper.getData('everything', {
      'q': search,
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    }).then((value) {
      searchModel = NewsModel.fromJson(value?.data);
      print(searchModel?.articles[0].title);
      emit(AppGetSearchSucceedState());
    }).catchError((error) {
      print(error.toString());
      emit(AppGetSearchErrorState());
    });
  }
}
