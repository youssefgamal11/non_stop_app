import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:non_stop/pages/Layout/Layout.dart';
import 'package:non_stop/pages/H&M_Page/h&m.dart';
import 'package:non_stop/pages/H&M_Page/product_details/product_details.dart';
import 'package:non_stop/pages/H&M_Page/product_rate/product_rate.dart';
import 'package:non_stop/pages/LogIn/cubit.dart';
import 'package:non_stop/pages/Resetingpassword/passwordset.dart';
import 'package:non_stop/pages/Resetingpassword/reset_password.dart';
import 'package:non_stop/pages/Resetingpassword/return_password.dart';
import 'package:non_stop/pages/Resetingpassword/return_password2.dart';
import 'package:non_stop/pages/SignUp/bloc.dart';
import 'package:non_stop/pages/Verify/Cubit.dart';
import 'package:non_stop/pages/settings/address/address.dart';
import 'package:non_stop/pages/settings/address/insert_new_address.dart';
import 'package:non_stop/pages/settings/contect_us.dart';
import 'package:non_stop/pages/settings/my_purchases.dart';
import 'package:non_stop/pages/settings/notification.dart';
import 'package:non_stop/pages/settings/policy.dart';
import 'package:non_stop/pages/settings/returnproduct/return_product.dart';
import 'package:non_stop/pages/settings/settingHome.dart';
import 'package:non_stop/pages/shoppingcart/confirmation.dart';
import 'package:non_stop/pages/shoppingcart/confirmation2.dart';
import 'package:non_stop/pages/shoppingcart/shopping_cart_main_page.dart';
import 'package:non_stop/shared/cubit/app_cubit.dart';
import 'package:non_stop/shared/cubit/app_states.dart';
import 'package:non_stop/shared/network/local.dart';
import 'pages/Activation/Activation.dart';
import 'pages/LogIn/LogIn.dart';
import 'pages/SignUp/SignUp.dart';
import 'package:non_stop/pages/products_return.dart';
import 'HomePage.dart';
import 'pages/Filter/filter.dart';
import 'shared/bloc_observer.dart';
import 'shared/network/remote.dart';


void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  DioHelper.init();
  await CacheHelper.init() ;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
        BlocProvider(create: (context) => SignUpCubit()),
      BlocProvider(create: (context) => VerifyCubit()),
      BlocProvider(create: (context) => LoginCubit()),
      BlocProvider(create: (context) => AppCubit()),
    ], child: BlocConsumer<AppCubit, AppStates>(
      listener: (context , state){},
      builder: (context , state){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          routes: {
            "/mypurchases": (_) => MyPurchases(),
            "/contectus": (_) => ContectUs(),
            "/address": (_) => Address(),
            "/policy": (_) => Policy(),
            "/returnproduct": (_) => ReturnProduct(),
            "/screen1": (_) => Screen1(),
            "/settinghome": (_) => Setting(),
            "/newaddress": (_) => InsertAddress(),
            "/firstpage": (_) => Screen1(),
            "/confirmation": (_) => Confirmation(),
            "/shoppingcart": (_) => ShoppingCart(),
            "/confirmation2": (_) => Confirmation2(),
            "/ProductDetails": (_) => ProductDetails(),
            "/Return": (_) => Return(),
            "/Filter": (_) => Filter(),
            "/HAndM": (_) => HAndM(),
            "/RateProduct": (_) => RateProduct(),
            "/Notification" :(_) => Notificate(),
            "/Signup" :(_) =>SignUp(),
            "/ReturnPassword" :(_) =>ReturnPassword(),
            "/Login" :(_) =>Login(),
            "/Activation" : (_) => Activation(),
            "/ReturnPassword2" :(_) =>ReturnPassword2(),
            "/ResetPassword" :(_) => ResetPassword(),
            "/PasswordSet" :(_) => PasswordSet(),

          },
        );
      },

    ));
  }
}
