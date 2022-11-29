import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/dio_helper.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  AppCubit get(context) => BlocProvider.of(context);

  login(String email, String password) {
    emit(AppLoginLoadingState());
    DioHelper.postData('login', {'email': email, 'password': password})
        .then((value) {
      print(value?.data);
      emit(AppLoginSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(AppLoginErrorState());
    });
  }
}
