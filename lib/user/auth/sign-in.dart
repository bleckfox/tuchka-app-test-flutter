import 'package:flutter/material.dart';
import 'package:tuchka/utils.dart';
import 'package:tuchka/utils/auth-form-template.dart';

import '../forms/login.dart';


class SignIn extends StatelessWidget{
  const SignIn({super.key});


  @override
  Widget build (BuildContext context){

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: primaryBackgroundColor2,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
                  height: MediaQuery.of(context).size.height - 200,
                  width: double.infinity,
                  child: const AuthTemplate(
                    formHeader: 'Войдите, чтобы начать пользоваться',
                    form: SignInForm(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
