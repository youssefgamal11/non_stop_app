import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:non_stop/pages/LogIn/cubit.dart';
import 'package:non_stop/pages/LogIn/model.dart';
import 'package:non_stop/pages/LogIn/states.dart';
import 'package:non_stop/pages/Verify/Cubit.dart';
import 'package:non_stop/pages/home/home.dart';
import 'package:non_stop/shared/constants.dart';
import 'package:non_stop/shared/network/local.dart';

class Login extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
          if (state is LoginSuccessState) {
            if (state.loginModel.status == 'success') {
              print(state.loginModel.message);
              CacheHelper.saveData(key: 'token', value: LoginCubit.get(context).loginModel.data.token);
              navigateAndFinish(context, Home());
            }
          }


      },
      builder: (context, state) {
        var cubit = LoginCubit.get(context);
        var verifyCubit = VerifyCubit.get(context);
        return Scaffold(
          backgroundColor: Color(0xFFFBFBFF),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Center(
                    child: Container(
                      width: 180,
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          "images/logo.png",
                        ),
                      )),
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                        fontFamily: '$fontFamily',
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Color(fontColor)),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Text(
                          "انشاء حساب",
                          style: TextStyle(
                              fontFamily: ("$fontFamily"),
                              fontWeight: FontWeight.w900,
                              color: Color(fontColor)),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/Signup");
                        },
                      ),
                      SizedBox(width: w * 0.02),
                      Text(
                        "ليس لديك حساب؟",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: '$fontFamily',
                            color: Color(fontColor2)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.08,
                  ),
                  textForm(x: "رقم الجوال" , controller: cubit.phoneController , validate: (String value ){ if(value.isEmpty){
                    return 'phone must not be null' ;
                  }}),
                  SizedBox(height: h * 0.05),
                  textForm(
                    x: "كلمه المرور",
                    y: Icon(Icons.remove_red_eye_rounded),
                    controller: cubit.passwordController ,
                    validate: (String value){
                      if(value.isEmpty){
                        return 'password must not be null';
                      }
                    }
                  ),
                  SizedBox(height: h * 0.1),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/ReturnPassword");
                    },
                    child: Text(
                      "نسيت كلمه المرور",
                      style: TextStyle(
                        fontFamily: '$fontFamily',
                        color: Colors.red.shade700,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.1,
                  ),
                  ConditionalBuilder(
                    condition: state is! LoginLoadingState,
                    builder: (context) => downScreenButton(
                        context: context,
                        buttonname: "تسجيل الدخول",
                        function: () {
                          if (formKey.currentState.validate()) {
                            LoginCubit.get(context).userLogin(
                                phone: cubit.phoneController.text,
                                password: cubit.passwordController.text,
                                token: verifyCubit.verifyModel.data.token,
                            );
                          }
                        }),
                    fallback: (context) =>
                        Center(child: CircularProgressIndicator()),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
