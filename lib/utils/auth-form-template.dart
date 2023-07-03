import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuchka/utils.dart';

class AuthTemplate extends StatelessWidget{
  const AuthTemplate(
      {
        super.key,
        required this.formHeader,
        required this.form
      });
  final String formHeader;
  final Widget form;

  @override
  Widget build (BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/logo.svg"),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                'ТУЧКА',
                style: TextStyle(
                  color: titleTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 40, left: 20),
          child: Text(
            formHeader,
            style: const TextStyle(
                color: primaryTextColor,
                fontWeight: FontWeight.w700,
                fontSize: 15
            ),
          ),
        ),
        Padding(
          // margin: const EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
          padding: const EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
          child: form,
        )
      ],
    );
  }
}
