import 'package:flutter/material.dart';
import 'package:tuchka/utils.dart';
import 'package:tuchka/utils/help-service-section.dart';

class SignUpForm extends StatefulWidget{
  const SignUpForm({super.key});


  @override
  SignUpFormState createState() {
    return SignUpFormState();
  }
}

bool _isObscure = true;

class SignUpFormState extends State<SignUpForm> {
  final _formRegisterKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formRegisterKey,
      child: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --------------------------------------------------------------- Имя
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Имя',
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
                          Icons.person_outline,
                          color: primaryStyleColor,
                        ),
                        border: InputBorder.none,
                        hintText: 'имя',
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    )
                ),
              ),

              // --------------------------------------------------------------- Фамилия
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Фамилия',
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
                          Icons.person_outline,
                          color: primaryStyleColor,
                        ),
                        border: InputBorder.none,
                        hintText: 'фамилия',
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    )
                ),
              ),

              // --------------------------------------------------------------- Отчество
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Отчество',
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
                          Icons.person_outline,
                          color: primaryStyleColor,
                        ),
                        border: InputBorder.none,
                        hintText: 'отчество',
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    )
                ),
              ),

              // --------------------------------------------------------------- Почта
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
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
                      textInputAction: TextInputAction.next,
                    )
                ),
              ),

              // --------------------------------------------------------------- Телефон
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Телефон',
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
                        hintText: '+7-999-888-77-66',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    )
                ),
              ),

              // --------------------------------------------------------------- Пароль
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  'Пароль',
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
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '•••••••••',
                          icon: const Icon(
                            Icons.lock_person,
                            color: primaryStyleColor,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                              color: primaryStyleColor,
                            ),
                            tooltip: 'Показать/скрыть',
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          )
                      ),
                      obscureText: _isObscure,
                      keyboardType: TextInputType.text,
                    )
                ),
              ),

              // --------------------------------------------------------------- Кнопка
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryStyleColor,
                      minimumSize: const Size.fromHeight(50)
                  ),
                  onPressed: () {
                    if (_formRegisterKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Создание...')),
                      );
                    }
                  },
                  child: const Text('Создать аккаунт'),
                ),
              ),

              // --------------------------------------------------------------- Поддержки и создание аккаунта
              const HelpServiceSection(
                  actionButtonText: 'Войти',
                  hintText: 'Есть аккаунт?',
                  navigateLink: '/user/auth/sign-in'
              ),

            ],
          ),

        ],
      ),
    );
  }
}
