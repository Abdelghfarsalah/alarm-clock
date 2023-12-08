import 'package:alarm/cubit/cubitScreen/stopwatch/stateStop.dart';
import 'package:alarm/cubit/cubitScreen/stopwatch/stopwatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  bool on =false;

  @override
  Widget build(BuildContext context) {
    var cubit= BlocProvider .of<stopwatchCubit>(context);
    final StopWatchTimer _stopWatchTimer = StopWatchTimer();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: const BoxDecoration(
                color: Color(0xffF0F5F8),
                shape: BoxShape.circle,
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
                ]),
            child: Center(
              child: StreamBuilder(
                  initialData: 0,
                  stream: _stopWatchTimer.rawTime,
                  builder: (context, snap) {
                    final value = snap.data;
                    final displayTime = StopWatchTimer.getDisplayTime(value!);
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            displayTime,
                            style: const TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            value.toString(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        BlocBuilder<stopwatchCubit,state>(builder: (context,state){
          return Row(
          children: [
            Spacer(),
            GestureDetector(
              onTap: () {
                if(cubit.on)
                  _stopWatchTimer.onStopTimer();
                else
                  _stopWatchTimer.onStartTimer();
                cubit.change();
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,
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
                ]),
                child: cubit.on?Icon(Icons.pause,size: 40,):Icon(Icons.play_arrow,size: 40,),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                _stopWatchTimer.onResetTimer();
                
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,
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
                ]),
              child:const Icon(Icons.replay,size: 30,)
              ),
            ),
            Spacer(),
            
          ],
                  );
        })
        
      ],
    );
  }
}
