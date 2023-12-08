import 'package:alarm/cubit/alarm/cubitalarm.dart';
import 'package:alarm/cubit/cubitScreen/cubit.dart';
import 'package:alarm/cubit/cubitScreen/stopwatch/stopwatch.dart';
import 'package:alarm/screen/home.dart';
import 'package:alarm/widget/alarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const alarm());
}
class alarm extends StatelessWidget {
  const alarm({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => cubitscreen(),
        ),BlocProvider(
          create: (context) => stopwatchCubit(),
        ),BlocProvider(
          create: (context) => AlarCubit(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:home(),
      ),
    );
  }
}