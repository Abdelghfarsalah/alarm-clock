import 'package:alarm/cubit/cubitScreen/state.dart';
import 'package:alarm/screen/homescreen/screen1.dart';
import 'package:alarm/screen/homescreen/screen2.dart';
import 'package:alarm/screen/homescreen/screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class cubitscreen extends Cubit<screenState> {
  cubitscreen() : super(initial());

  int currentindex=0;
  List<Widget> screen=const[
  screen1(),
  screen2(),
  screen3()
  ];
    void changescreen({required int index}){
      print(index);
    currentindex=index;
    emit(change());
    emit(changea());
  }
}