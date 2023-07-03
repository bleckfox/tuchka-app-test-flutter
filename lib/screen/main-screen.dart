import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuchka/utils.dart';


class MainScreen extends StatelessWidget{
  const MainScreen({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
            child: Text(
              'Главная страница',
              style: TextStyle(
                  color: primaryTextColor
              ),
            ),
        )
    );
  }
}