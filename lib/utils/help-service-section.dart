import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuchka/utils.dart';

class HelpServiceSection extends StatelessWidget{
  const HelpServiceSection(
      {
        super.key,
        required this.actionButtonText,
        required this.hintText,
        required this.navigateLink
      });
  final String actionButtonText;
  final String hintText;
  final String navigateLink;

  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        // --------------------------------------------------------------------- Hint
        Center(
            child: Container(
              margin: const EdgeInsets.only(top: 25),
              child: Text(
                hintText,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
            )
        ),

        // --------------------------------------------------------------------- Button
        Center(
            child: Container(
              margin: const EdgeInsets.only(top: 5),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, navigateLink);
                },
                child: Text(
                  actionButtonText,
                  style: const TextStyle(
                      color: primaryTextColor
                  ),
                ),
              ),
            )
        ),

        // --------------------------------------------------------------------- Help
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 5),
            child: TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/utils/help-service');
                },
                icon: const Icon(
                  Icons.headset_mic_rounded,
                  color: Colors.black54,
                ),
                label: const Text(
                  'Служба поддержки',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                )
            ),
          ),
        ),

      ],
    );
  }

}
