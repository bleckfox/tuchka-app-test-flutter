import 'package:flutter/material.dart';
import 'package:tuchka/utils.dart';
import 'package:tuchka/utils/auth-form-template.dart';

import '../forms/register.dart';

class SignUp extends StatelessWidget{
  const SignUp({super.key});


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
                  margin: const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
                  width: double.infinity,
                  child: const AuthTemplate(
                    formHeader: 'Создание аккаунта',
                    form: SignUpForm(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
