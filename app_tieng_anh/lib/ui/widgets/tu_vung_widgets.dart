import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class TuVungWidgets extends StatelessWidget 
{
  const TuVungWidgets({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration
      (
        color: Colors.white,
        
      ),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          //Từ vựng và icon âm thanh
          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
            [
              Column
              (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: 
                [
                  //Từ vựng
                  Text
                  (
                    "Small talk",
                    style: TextStyle
                    (
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                  SizedBox(height: 2,),
                  //Phiên âm
                  Text
                  (
                    "Phiên âm của từ",
                    style: TextStyle
                    (
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Container
              (
                  width: 35,
                  height: 35,
                decoration: BoxDecoration
                (
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Icon
                (
                  Icons.volume_up_outlined,
                  size: 12,
                  color: Colors.blue[900],
                ),
              )
            ],
          ),

          SizedBox(height: 10,),
          //Nghĩa của từ
          Text
          (
            "n. Chuyện phiếm, trò chuyện xã giao. ",
            style: TextStyle
            (
              fontSize: 13,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 10,),
          //Ví dụ minh họa
          Container
          (
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration
            (
              color: Colors.indigo[50],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text
            (
              "I'm not very good at small talk.",
              style: TextStyle
              (
                fontSize: 12,
                color: Colors.grey[800],
              ),
            ),

          ),
        ],
      ),
    );
  }

  @Preview(name:"Tu Vung Widgets")
  static Widget preview()
  {
    return const TuVungWidgets();
  }

}