import 'package:flutter/material.dart';

class DiemPhatAmWidgets extends StatelessWidget 
{
  int diem=80;
  @override
  Widget build(BuildContext context) {
    return Container
    (
      width: 200,
      height: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration
      (
        color: Colors.indigo[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container
      (
        width: 80,
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration
        (
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.blue.shade900,width: 5,style: BorderStyle.solid)
        ),

        child: Text
        (
          diem.toString(),
          style: TextStyle
          (
            fontSize: 45,
            fontWeight: FontWeight.bold
          ),
        ),

      ),
    );
  }

}