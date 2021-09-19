
abstract class AppStates {}

class InitialAppState extends AppStates {}

class AppLoadingState extends AppStates {}

class AppErrorState extends AppStates {
  final String error;
  AppErrorState(this.error);
}

class AppSuccessState extends AppStates {
}
