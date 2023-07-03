import 'package:flutter/material.dart';
import 'package:tuchka/utils.dart';
import 'package:tuchka/utils/auth-form-template.dart';

import '../forms/recover.dart';

class RecoverPassword extends StatelessWidget{
  const RecoverPassword({super.key});


  @override
  Widget build (BuildContext context){

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              color: primaryBackgroundColor2,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height - 200,
            width: double.infinity,
            child: const AuthTemplate(
              formHeader: 'Восстановление аккаунта',
              form: RecoverPasswordForm(),
            ),
          ),
        ),
      ),
    );
  }
}
