import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function() onClearState;

  const Result({
    Key? key,
    required this.count,
    required this.total,
    required this.onClearState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 3) {
      msg = 'We believe that you can do it better!';
      img = Image.asset('assets/images/scream_animated_sticker.gif');
    } else if ((4 <= count && count <= 7)) {
      msg = 'Good job!';
      img = Image.asset('assets/images/ok_hand_animated_sticker.gif');
    } else {
      msg = 'Yeah,you did it!\n You have an awesome result!';
      img = Image.asset('assets/images/stuck_out_tongue_animated_sticker.gif');
    }

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.deepPurple,
                  blurRadius: 15.0,
                  spreadRadius: 0.0,
                ),
              ],
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(colors: <Color>[
                Color(0xff3700b3),
                Color(0xff6200ea),
                Color(0xffea80fc),
              ])),
          child: Wrap(
            //FittedBox?
            alignment: WrapAlignment.center,
            spacing: 50,
            runSpacing: 10,
            children: [
              Text(
                msg,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 120,
                height: 120,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: img,
                ),
              ),
              Text(
                'You have answered $count out of $total questions correctly',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              ElevatedButton(
                  onPressed: onClearState,
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffea80fc),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10.0),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    shadowColor: Colors.deepPurple,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    // shadowColor: Colors.black,
                    // elevation: 10,
                  ),
                  child: const Text(
                    'Restart the quiz',
                  )),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            if (Platform.isAndroid) {
              SystemNavigator.pop();
            } else if (Platform.isIOS) {
              exit(0);
            }
          },
          style: TextButton.styleFrom(
            primary: Colors.deepPurpleAccent.shade700,
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: const Text(
            'Exit',
          ),
        ),
      ],
    );
  }
}
