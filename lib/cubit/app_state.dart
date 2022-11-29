part of 'app_cubit.dart';

abstract class AppState {}

class AppInitial extends AppState {}

class AppLoginLoadingState extends AppState {}

class AppLoginSuccessState extends AppState {}

class AppLoginErrorState extends AppState {}
