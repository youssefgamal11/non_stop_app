
import 'model.dart';
abstract class HomeStates {}

class InitialAppState extends HomeStates {}

class HomeLoadingState extends HomeStates {}

class HomeErrorState extends HomeStates {
  final String error;
  HomeErrorState(this.error);
}

class HomeSuccessState extends HomeStates {
}
