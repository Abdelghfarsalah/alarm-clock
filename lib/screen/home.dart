import 'package:alarm/cubit/cubitScreen/cubit.dart';
import 'package:alarm/cubit/cubitScreen/state.dart';
import 'package:alarm/screen/homescreen/screen1.dart';
import 'package:alarm/widget/button.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<cubitscreen>(context);
    return Scaffold(
      backgroundColor: Color(0xffF0F5F8),
      body: SafeArea(
          child: BlocConsumer<cubitscreen, screenState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xffF0F5F8),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 218, 215, 215),
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset(5.0, 13.0)),
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: Offset(-5, -8)),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    button(
                      name: "World clock",
                      onTap: () {
                        cubit.changescreen(index: 0);
                      },
                      select: cubit.currentindex == 0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    button(
                      name: "Alarm",
                      onTap: () {
                        cubit.changescreen(index: 1);
                      },
                      select: cubit.currentindex == 1,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    button(
                      name: "Timer",
                      onTap: () {
                        cubit.changescreen(index: 2);
                      },
                      select: cubit.currentindex == 2,
                    ),
                  ],
                ),
              ),
            ),
            cubit.screen[cubit.currentindex]
          ]);
        },
      )),
    );
  }
}
