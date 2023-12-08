
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key,required this.name,required this.select,required this.onTap});
  final bool select;
  final String name;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return select? Expanded(
      child: Container(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 58,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Color(0xffF0F5F8),
              border: Border.all(
                  width: 0, color: const Color.fromARGB(255, 221, 219, 219)),
              boxShadow: const [
                
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    spreadRadius: 0,
                    offset: Offset(2, 5)),
                BoxShadow(
                    color: Colors.white,
                    blurRadius: 2,
                    spreadRadius: 0,
                    offset: Offset(-1, -1)),
              ],
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 190, 187, 187),
                    Color(0xffF0F5F8),
                    Color(0xffF0F5F8),
                    Color(0xffF0F5F8),
                    Color(0xffF0F5F8),
                  ]),
            ),
            child:  Center(child: Text(name,style:const TextStyle(
              color: Color(0xff000000),
              fontSize: 15,
              fontWeight: FontWeight.w600
            ),)),
          ),
        ),
      ),
    ): Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
            child: Text(name,style:const TextStyle(
              color: Color(0xff858585),
              fontSize: 15,
              fontWeight: FontWeight.w300
            ),),
          ),
        ),
      ),
    );
  }
}
