import 'package:non_stop/pages/SignUp/register_model.dart';

abstract class SignUpStates {}

class InitialAppState extends SignUpStates {}

class SingUpLoadingState extends SignUpStates {}

class SignUpErrorState extends SignUpStates {
  final String error;
  final SignUpModel signUpModel;
  SignUpErrorState(this.error, this.signUpModel);
}

class SignUpSuccessState extends SignUpStates {
  final SignUpModel signUpModel;
  SignUpSuccessState(this.signUpModel);
}
