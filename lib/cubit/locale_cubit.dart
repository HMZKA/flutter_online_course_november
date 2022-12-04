import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(LocaleInitial());
  LocaleCubit get(context) => BlocProvider.of(context);
  var locale = Locale('en');

  changeLang(ourLocale) {
    locale = ourLocale;
    emit(LocaleChangeState());
  }
}
