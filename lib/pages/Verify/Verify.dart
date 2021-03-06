import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:non_stop/pages/Activation/Activation.dart';
import 'package:non_stop/pages/SignUp/bloc.dart';
import 'package:non_stop/pages/Verify/Cubit.dart';
import 'package:non_stop/pages/Verify/States.dart';
import 'package:non_stop/shared/constants.dart';
import 'package:non_stop/shared/network/local.dart';

class Verify extends StatelessWidget {
  var codeController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return BlocConsumer<VerifyCubit, VerifyStates>(
      listener: (context, state) {
        if (state is VerifySuccessState) {
          if (state.verifyModel.status == 'success') {
            print(state.verifyModel.message);
            navigateAndFinish(context, Activation());
            print(state.verifyModel.data.token);
            CacheHelper.saveData(
                key: 'token', value: state.verifyModel.data.token);
          } else {
            showToast(message: state.verifyModel.message);
          }
        }
      },
      builder: (context, state) {
        String phone = SignUpCubit.get(context).phoneController.text;
        return Form(
          key: formKey,
          child: Scaffold(
            backgroundColor: Color(0xFFFBFBFF),
            body: SingleChildScrollView(
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
                    "?????????? ????????????",
                    style: TextStyle(
                        fontFamily: '$fontFamily',
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Color(fontColor)),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "???????????? ????????????",
                        style: TextStyle(
                            color: Color(fontColor3),
                            fontWeight: FontWeight.w900,
                            fontSize: 15),
                      ),
                      Text("???? ???????? ???? ???????????? ?????? ??????????????",
                          style: TextStyle(
                              color: Color(fontColor3),
                              fontWeight: FontWeight.w900,
                              fontSize: 15)),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text("???????????? ???? ?????? ?????? ???????????? ????????????",
                            style: TextStyle(
                                color: Color(fontColor3),
                                fontWeight: FontWeight.w900,
                                fontSize: 15)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text(
                      'phone :${phone ==null ? 'null' : phone}',
                      style: TextStyle(
                          color: Color(fontColor),
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  gestureText("?????????? ?????? ????????????"),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  textForm(
                      controller: codeController,
                      x: '?????? ??????????????',
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'code must not be null';
                        }
                      }),
                  SizedBox(height: h * 0.02),
                  gestureText("?????????? ?????????? ?????? ??????????????"),
                  Text(
                    "1:55",
                    style: TextStyle(
                      fontFamily: '$fontFamily',
                      color: Colors.red.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.06,
                  ),
                  ConditionalBuilder(
                    condition: state is! VerifyLoadingState,
                    builder: (context) => downScreenButton(
                        pagename: "/Activation",
                        context: context,
                        buttonname: "?????????? ????????  ",
                        function: () {
                          if (formKey.currentState.validate()) {
                            VerifyCubit.get(context).userVerify(
                              code: codeController.text,
                              phone: phone,
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
