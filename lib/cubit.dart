import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitState());

  AppCubit get(context) => BlocProvider.of(context);

  int num = 0;

  minusCount() {
    num--;
    emit(AppCounterMinusState());
  }

  plusCount() {
    num++;
    emit(AppCounterPlusState());
  }
}
