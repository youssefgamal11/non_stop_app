
import 'Model.dart';

abstract class VerifyStates {}

class InitialVerifyState extends VerifyStates {}

class VerifyLoadingState extends VerifyStates {}

class VerifyErrorState extends VerifyStates {
  final String error;
  final VerifyModel verifyModel;
  VerifyErrorState(this.error, this.verifyModel);
}

class VerifySuccessState extends VerifyStates {
  final VerifyModel verifyModel;
  VerifySuccessState(this.verifyModel);
}
