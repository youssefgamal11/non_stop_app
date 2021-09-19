import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:non_stop/pages/SignUp/register_model.dart';
import 'package:non_stop/pages/SignUp/states.dart';
import 'package:non_stop/shared/constants.dart';
import 'package:non_stop/shared/network/remote.dart';
class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(InitialAppState());

  static SignUpCubit get(context) => BlocProvider.of(context);

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emilController = TextEditingController();
  var cityController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  String number = 'iam here bitch';

  SignUpModel signUpModel;

  void userAuth(
      {String name, String email, String password, String phone, String city}) {
    emit(SingUpLoadingState());

    DioHelper.postData(url: REGISTER, data: {
      'fullname': name,
      'email': email,
      'phone': phone,
      'password': password,
      'city': city
    }).then((value) {
      print(value.toString() + "_________here");
      signUpModel = SignUpModel.fromJson(value.data);
      emit(SignUpSuccessState(signUpModel));
    }).catchError((error) {
      print(error.toString());
      emit(SignUpErrorState(error.toString(), signUpModel));
    });
  }
}
