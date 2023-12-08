import 'package:alarm/cubit/alarm/cubitalarm.dart';
import 'package:alarm/model/alarmModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switch_button/switch_button.dart';
import 'package:switcher_button/switcher_button.dart';

class Alar extends StatefulWidget {
  const Alar(
      {super.key,required this.alar});
  final Alarm alar;

  @override
  State<Alar> createState() => _AlarState();
}

class _AlarState extends State<Alar> {
  bool on=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow:const [
            BoxShadow(
              spreadRadius: 0,
              offset: Offset(10, 10),
              blurRadius: 10,
              color: Colors.grey
            )
          ],
          color:on? Color(0xffFB63A3):Color(0xffDFDFDF),
          borderRadius: BorderRadius.circular(10)
        ),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Center(
          child: ListTile(
            leading: IconButton(onPressed: (){
              BlocProvider.of<AlarCubit>(context).delete(alarm: widget.alar);
            },
            icon: Icon(Icons.delete,size: 50,color:on?Colors.black:Colors.grey ,),),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.alar.title,
                  style:  TextStyle(
                    fontSize: 36,
                    color:on? Color(0xffFFFFFF):Color(0xff000000),
                  ),
                ),
                Text(
                  widget.alar.pmORam,
                  style:  TextStyle(
                    fontSize: 18,
                    color: on? Color(0xffFFFFFF):Color(0xff000000),
                  ),
                )
              ],
            ),
            subtitle: Text(
              widget.alar.subtitle,
              style:  TextStyle(
                fontSize: 14,
                color:on? Color(0xffFFFFFF):Color(0xff000000),
              ),
            ),
            trailing: SizedBox(
                width: 80,
                height: 40,
                child: SwitcherButton(
                  value: false,
                  size: 200,
                  offColor: Colors.grey,
                  onColor: Colors.greenAccent,
                  onChange: (value) {
                    setState(() {
                      on=value;
                    });
                  },
                )),
          ),
        ),
      ),
    );
  }
}
