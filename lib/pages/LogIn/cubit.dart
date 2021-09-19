import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:non_stop/pages/LogIn/states.dart';
import 'package:non_stop/shared/constants.dart';
import 'package:non_stop/shared/network/remote.dart';

import 'model.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(InitialAppState());

  static LoginCubit get(context) => BlocProvider.of(context);

  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  LoginModel loginModel;

  void userLogin({String password, String phone, String token}) {
    emit(LoginLoadingState());

    DioHelper.postData(url: LOGIN, data: {
      'phone': phone,
      'password': password,
      'device_token': token,
      'type': Platform.isIOS ? 'ios' : 'android',
    }).then((value) {
      loginModel = LoginModel.fromJson(value.data);
      emit(LoginSuccessState(loginModel));
    }).catchError((error) {
      print(error.toString());
      emit(LoginErrorState(error.toString(), loginModel));
    });
  }
}
