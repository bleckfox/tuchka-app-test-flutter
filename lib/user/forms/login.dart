import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import 'package:tuchka/utils.dart';
import 'package:tuchka/utils/help-service-section.dart';

class SignInForm extends StatefulWidget{
  const SignInForm({super.key});


  @override
  SignInFormState createState() {
    return SignInFormState();
  }
}

bool _isObscure = true;
bool _isLoading = false;
bool _isEmailValid = false;
bool _isPasswordValid = false;
String? _passwordErrorMessage = '';
bool _showPasswordErrorMessage = true;

class SignInFormState extends State<SignInForm> {
  final _formLoginKey = GlobalKey<FormState>();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  @override
  void dispose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formLoginKey,
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
                    textInputAction: TextInputAction.next,
                    controller: emailEditingController,
                    onChanged: (value) {
                      setState(() {
                        _isEmailValid = EmailValidator.validate(value);
                      });
                    },
                  )
                ),
              ),

              // --------------------------------------------------------------- Пароль
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Пароль',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/user/auth/recover');
                      },
                      child: const Text(
                        'Забыли пароль?',
                        style: TextStyle(
                            color: primaryTextColor
                        ),
                      ),
                    ),
                  ],
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
                      controller: passwordEditingController,
                      onChanged: (value) {
                        setState(() {
                          validatePassword(value) == null ? _isPasswordValid = true : _isPasswordValid = false;
                          _passwordErrorMessage = validatePassword(value);
                        });

                        if (_passwordErrorMessage != null){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(_passwordErrorMessage!)),
                          );
                        }
                      },
                    )
                ),
              ),

              // --------------------------------------------------------------- Кнопка
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isEmailValid && _isPasswordValid ? primaryButtonColor : primaryDisableColor,
                    minimumSize: const Size.fromHeight(50)
                  ),

                  onPressed: () async {
                      if (_isEmailValid && _isPasswordValid){
                        if (_isLoading) return;
                        setState(() => _isLoading = true);

                        await Future.delayed(const Duration(seconds: 2));
                        setState(() => _isLoading = false);

                        if (_formLoginKey.currentState!.validate()){
                          print(emailEditingController.text);
                          print(passwordEditingController.text);
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   const SnackBar(content: Text('Выполняется вход...')),
                          // );
                        }
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Введите корректные данные')),
                        );
                      }

                    },
                  child:
                  _isLoading
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white),
                            ),
                            Text('Отправка данных')
                        ],
                      )
                      : const Text('Вход'),
                ),
              ),

              // --------------------------------------------------------------- Поддержки и создание аккаунта
              const HelpServiceSection(
                  actionButtonText: 'Создать аккаунт',
                  hintText: 'Еще не зарегистрированы?',
                  navigateLink: '/user/auth/sign-up'
              ),

            ],
          ),

        ],
      ),
    );
  }
}
