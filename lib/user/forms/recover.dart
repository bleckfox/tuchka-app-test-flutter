import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuchka/utils.dart';
import 'package:tuchka/user/auth/recover-password.dart';

class RecoverPasswordForm extends StatefulWidget{
  const RecoverPasswordForm({super.key});


  @override
  RecoverPasswordFormState createState() {
    return RecoverPasswordFormState();
  }
}

class RecoverPasswordFormState extends State<RecoverPasswordForm> {
  final _formRecoverKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formRecoverKey,
      child: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --------------------------------------------------------------- Почта
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  'E-mail (почта)',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(208, 214, 220, 1),
                      width: 1
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    child: TextFormField(
                      cursorColor: primaryStyleColor,
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.mail_outline,
                          color: primaryStyleColor,
                        ),
                        border: InputBorder.none,
                        hintText: 'почта@mail.ru',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    )
                ),
              ),

              // --------------------------------------------------------------- Кнопка восстановления
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryStyleColor,
                      minimumSize: const Size.fromHeight(50)
                  ),
                  onPressed: () {
                    if (_formRecoverKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Проверьте Вашу почту')),
                      );
                    }
                  },
                  child: const Text('Восстановить'),
                ),
              ),

              // --------------------------------------------------------------- Кнопка назад
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: primaryStyleColor,
                      minimumSize: const Size.fromHeight(50)
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Назад',
                    style: TextStyle(
                      color: Colors.black54
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
