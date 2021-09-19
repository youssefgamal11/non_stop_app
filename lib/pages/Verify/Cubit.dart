import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:non_stop/shared/constants.dart';
import 'package:non_stop/shared/network/remote.dart';
import 'Model.dart';
import 'States.dart';

class VerifyCubit extends Cubit<VerifyStates> {
  VerifyCubit() : super(InitialVerifyState());
  static VerifyCubit get(context) => BlocProvider.of(context);


  VerifyModel verifyModel ;


  void userVerify(
      {String code , String phone}) {
    emit(VerifyLoadingState());

    DioHelper.postData(url: VERIFY, data: {
      'code': code ,
      'phone': phone,
      'device_token' :'7485996',
      'type' : Platform.isIOS ? 'ios' : 'android',

    }).then((value) {
      print(value.toString() + "_________here");
      verifyModel =VerifyModel.fromJson(value.data);
      emit(VerifySuccessState(verifyModel));
    }).catchError((error) {
      print(error.toString());
      emit(VerifyErrorState(error.toString(), verifyModel));
    });
  }


}
