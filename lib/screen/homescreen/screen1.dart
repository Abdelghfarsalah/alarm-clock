import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
            Container(
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF0F5F8),
                boxShadow: [
                  BoxShadow(
                        color: Color.fromARGB(255, 218, 215, 215),
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset(6.0, 12.0)),
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: Offset(-5, -8)),
                ]
              ) ,
              height: MediaQuery.of(context).size.height*0.5,
              width: MediaQuery.of(context).size.width*0.8,
              child: AnalogClock(
                decoration:const BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle),
                isLive: true,
                hourHandColor: Colors.black,
                minuteHandColor: Colors.black,
                showSecondHand: true,
                numberColor: Colors.green,
                showNumbers: true,
                showAllNumbers: false,
                textScaleFactor: 1.4,
                showTicks: true,
                showDigitalClock: true,
                datetime: DateTime.now(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
            Text(DateFormat.yMMMd().format(DateTime.now()),style:const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              
            ),),
            const SizedBox(
              height: 20,
            ),
            Text(DateFormat.EEEE().format(DateTime.now()),style:const TextStyle(
              fontSize: 25,
              color: Colors.greenAccent,
              fontWeight: FontWeight.w900,
              
            ),),
          
      ],
    );
  }
}