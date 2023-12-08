import 'package:alarm/cubit/cubitScreen/stopwatch/stateStop.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class stopwatchCubit extends Cubit<state> {
  stopwatchCubit() : super(changemode());
  bool on=false;

  void change(){
    on=!on;
    emit(changemode());
  }
}