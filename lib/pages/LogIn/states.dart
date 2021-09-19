
  import 'model.dart';

abstract class LoginStates {}

  class InitialAppState extends LoginStates {}

  class LoginLoadingState extends LoginStates {}

    class LoginErrorState extends LoginStates {
  final String error;
    final LoginModel loginModel;
    LoginErrorState(this.error, this.loginModel);
}

    class LoginSuccessState extends LoginStates {
    final LoginModel loginModel;
    LoginSuccessState(this.loginModel);

}
