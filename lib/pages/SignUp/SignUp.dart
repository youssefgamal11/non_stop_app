import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:non_stop/pages/SignUp/states.dart';
import 'package:non_stop/pages/Verify/Verify.dart';
import 'package:non_stop/shared/constants.dart';
import 'package:non_stop/shared/network/local.dart';
import 'bloc.dart';

class SignUp extends StatelessWidget {
  SignUp({Key key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return BlocConsumer<SignUpCubit, SignUpStates>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          if (state.signUpModel.status == 'success') {
            print(state.signUpModel.message);
            showToast(message: "    تم التسجيل بنجاح رمز التفعيل هو${state.signUpModel.devMessage.toString()}  ");
            navigateAndFinish(context, Verify());
          }
        }
      },
      builder: (context, state) {
        var cubit = SignUpCubit.get(context);
        return Scaffold(
          backgroundColor: Color(0xFFFBFBFF),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Center(
                    child: Container(
                      width: 160,
                      height: 130,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          "images/logo.png",
                        ),
                      )),
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Text(
                    "انشاء حساب العميل",
                    style: TextStyle(
                        fontFamily: '$fontFamily',
                        fontWeight: FontWeight.w900,
                        fontSize: 17,
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
                          "تسجيل الدخول",
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
                        "هل لديك حساب بالفعل ؟",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: '$fontFamily',
                            color: Color(fontColor2)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  textForm(
                      x: "الاسم",
                      controller: cubit.nameController,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return "name must not be empty";
                        }
                      }),
                  SizedBox(height: h * 0.03),
                  textForm(
                      x: "رقم الجوال",
                      controller: cubit.phoneController,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return "phone must not be empty";
                        }
                      }),
                  SizedBox(height: h * 0.03),
                  textForm(
                      x: "البريد الالكترونى ",
                      controller: cubit.emilController,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return "email must not be empty";
                        }
                      }),
                  SizedBox(height: h * 0.03),
                  textForm(
                      x: "كلمه المرور",
                      y: Icon(Icons.remove_red_eye_rounded),
                      controller: cubit.passwordController,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return "password must not be empty";
                        }
                      }),
                  SizedBox(height: h * 0.03),
                  textForm(
                      x: "تاكيد المرور",
                      y: Icon(Icons.remove_red_eye_rounded),
                      controller: cubit.confirmPasswordController,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return "password must not be empty";
                        }
                      }),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  ConditionalBuilder(
                    condition:state is! SingUpLoadingState ,
                    builder: (context) => downScreenButton(
                        pagename: "/Activation",
                        context: context,
                        buttonname: "انشاء حساب  ",
                        function: () {
                          if (formKey.currentState.validate()) {
                            SignUpCubit.get(context).userAuth(
                                name: cubit.nameController.text,
                                phone: cubit.phoneController.text,
                                email: cubit.emilController.text,
                                password: cubit.passwordController.text);
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
