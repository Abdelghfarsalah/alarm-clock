import 'package:alarm/cubit/alarm/state.dart';
import 'package:alarm/model/alarmModel.dart';
import 'package:alarm/widget/alarm.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlarCubit extends Cubit<stateAlarm> {
  AlarCubit() : super(add());
  List<Alarm> list = [
    const Alarm(pmORam: "AM", subtitle: "Sun, Wed, Sat", title: "5:00"),
    const Alarm(pmORam: "AM", subtitle: "Sun, Wed, Sat", title: "5:00"),
    const Alarm(pmORam: "AM", subtitle: "Sun, Wed, Sat", title: "5:00"),
    const Alarm(pmORam: "AM", subtitle: "Sun, Wed, Sat", title: "5:00"),
    const Alarm(pmORam: "AM", subtitle: "Sun, Wed, Sat", title: "5:00"),
    ];

  void delete({required Alarm alarm}){
    list.remove(alarm);
    emit(remove());
  }
}
