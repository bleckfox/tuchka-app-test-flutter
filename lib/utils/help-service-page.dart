import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

import 'package:tuchka/utils.dart';

const String helpEmail = 'help@cell-group.ru';

class HelpServicePage extends StatelessWidget{
  const HelpServicePage(
      {
        super.key,
      });

  // This function is triggered when the copy icon is pressed
  Future<void> _copyToClipboard() async {
    await Clipboard.setData(const ClipboardData(text: helpEmail));
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: const BoxDecoration(
                  color: primaryBackgroundColor2,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
                height: MediaQuery.of(context).size.height - 300,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Row(
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
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 40, left: 20),
                      child: const Text(
                        'По любым возникшим ситуациям пожалуйста обращайтесь по адресу',
                        style: TextStyle(
                          color: Colors.black54
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 40, left: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () async{
                                    _copyToClipboard();
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                      content: Text('Почта скопирована'),
                                    ));
                                  },
                                  icon: const Icon(
                                    Icons.copy,
                                    color: primaryStyleColor,
                                  ),
                                  tooltip: 'Копировать',
                              ),
                              const Text(
                                helpEmail,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600
                                ),
                              ),

                            ],
                          ),
                          const Text(
                            'копировать',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 10,
                            ),
                          ),

                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryStyleColor,
                            minimumSize: const Size.fromHeight(50)
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Назад'),
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}
