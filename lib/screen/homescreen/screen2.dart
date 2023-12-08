import 'package:alarm/cubit/alarm/cubitalarm.dart';
import 'package:alarm/cubit/alarm/state.dart';
import 'package:alarm/cubit/cubitScreen/stopwatch/stateStop.dart';
import 'package:alarm/main.dart';
import 'package:alarm/widget/alarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=BlocProvider.of<AlarCubit>(context);
    return Expanded(
      child:BlocBuilder<AlarCubit,stateAlarm>(builder: (context,state){
        return  Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                itemCount: cubit.list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Alar(alar: cubit.list[index]);
                },
                        ),
              ),
              
              
            ]
          ),
        Positioned(
          left: MediaQuery.of(context).size.width*0.8,
          top: MediaQuery.of(context).size.height*0.77,
          child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 64, 170, 170),
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
                  child: const Center(
                      child: Text(
                    "+",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                  )),
                ),
              ),)
        ],
      );
    
      },));
  }
}
