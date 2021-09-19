import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:non_stop/pages/home/ads_model.dart';
import 'package:non_stop/pages/home/states.dart';
import 'package:non_stop/shared/constants.dart';
import 'package:non_stop/shared/network/remote.dart';
import 'model.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitialAppState());

  static HomeCubit get(context) => BlocProvider.of(context);
  List<dynamic> myData =[];
  HomeModel homeModel ;
  AdsModel adsModel ;
  void printFullText(String text){
    final pattern = RegExp('.{1,1800}');
    pattern.allMatches(text).forEach((element)=> print(element.group(0)));
  }

  void getAdsData(){
    // emit(HomeLoadingState());
    DioHelper.getData(url: ADS).then((value) {
      adsModel = AdsModel.fromJson(value.data);
      printFullText(adsModel.data[0].image);
      // emit(HomeSuccessState());
    }).catchError((error) {
      print(error.toString());
      // emit(HomeErrorState(error.toString()));
    });
  }


  void getHomeData() {
    emit(HomeLoadingState());
    DioHelper.getData(url: ALLSTORES).then((value) {
      homeModel = HomeModel.fromJson(value.data);
      printFullText(homeModel.data[0].location);
      emit(HomeSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(HomeErrorState(error.toString()));
    });
  }
}
