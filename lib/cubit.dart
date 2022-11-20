import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/dio_helper.dart';
import 'package:flutter_online_course/news_model.dart';
import 'package:flutter_online_course/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());

  AppCubit get(context) => BlocProvider.of(context);
  NewsModel? newsModel;
  getBusiness() {
    emit(AppGetBusinessLoadingState());
    DioHelper.getData('top-headlines', {
      'country': 'us',
      'category': 'business',
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    }).then((value) {
      newsModel = NewsModel.fromJson(value?.data);
      print(newsModel?.articles[5].title);
      emit(AppGetBusinessSucceedState());
    }).catchError((error) {
      print(error.toString());
      emit(AppGetBusinessErrorState());
    });
  }

  getSport() {
    emit(AppGetSportLoadingState());
    DioHelper.getData('top-headlines', {
      'country': 'us',
      'category': 'sport',
      'apiKey': 'a269e4f1de864efc85f38b36f1bae318'
    }).then((value) {
      print(value?.data);
      emit(AppGetSportSucceedState());
    }).catchError((error) {
      print(error.toString());
      emit(AppGetSportErrorState());
    });
  }
}
