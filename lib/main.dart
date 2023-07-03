import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuchka/user/auth/recover-password.dart';
import 'package:tuchka/utils.dart';
import 'package:tuchka/user/auth/sign-in.dart';
import 'package:tuchka/user/auth/sign-up.dart';
import 'package:tuchka/screen/main-screen.dart';
import 'package:tuchka/utils/help-service-page.dart';

// void main(){
//   const app = MainWindow();
//   runApp(app);
// }

void main() => runApp(MainWindow());

class MainWindow extends StatelessWidget{
  const MainWindow({super.key});


  @override
  Widget build(BuildContext context){
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const Main(),
          '/user/auth/sign-in': (context) => SignIn(),
          '/user/auth/sign-up': (context) => SignUp(),
          '/user/auth/recover': (context) => RecoverPassword(),

          '/screen/main': (context) => MainScreen(),

          '/utils/help-service': (context) => HelpServicePage(),
        },
        title: 'Tuchka CRM',
    );
  }
}

class Main extends StatelessWidget{
  const Main({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user/auth/sign-in');
              },
              child: const Text(
                'Войти',
                style: TextStyle(
                    color: primaryTextColor
                ),
              ),
            )
        )
    );
  }
}
