import 'package:flutter/material.dart';

class ChooseAnswerWidgets extends StatefulWidget {
  const ChooseAnswerWidgets({super.key});

  @override
  State<ChooseAnswerWidgets> createState() => ChooseAnswerWidgetsState();
}



class ChooseAnswerWidgetsState extends State<ChooseAnswerWidgets> {
  bool isSelected = false;
  String name = "A";
  String description = "Đoạn mô tả đáp án cho đáp án A";

  void toggleSelection() 
  {
    setState(() 
    {
      isSelected = !isSelected;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector
    (
      onTap: toggleSelection,
      child: isSelected ? answerSelected() : answerNotSelected(),
    );
  }

  Widget answerSelected()
  {
    return Container
    (
      height: 80,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration
      (
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue.shade900),
        boxShadow: [
          BoxShadow(color: Colors.grey,blurRadius: 10,offset: Offset(0, 1))
        ]
      ),
      child: Row
      (
        children: 
        [
          //Tên đáp án
          Container
          (
            width: 23,
            height: 23,
            alignment: Alignment.center,
            decoration: BoxDecoration
            (
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(10),
              
            ),
            child: Text
              (
                name,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                
              ),
            
          ),

          SizedBox(width: 15,),
          //Mô tả đáp án
          Text
          (
            description,
            style: TextStyle
            (
              color: Colors.blue.shade900,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      )
    );
  }

   Widget answerNotSelected()
  {
    return Container
    (
      height: 80,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration
      (
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Row
      (
        children: 
        [
          //Tên đáp án
          Container
          (
            width: 23,
            height: 23,
            alignment: Alignment.center,
            decoration: BoxDecoration
            (
              color: Colors.indigo[50],
              borderRadius: BorderRadius.circular(10),
              
            ),
            child: Text
              (
                name,
                style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.bold),
                
              ),
            
          ),

          SizedBox(width: 15,),
          //Mô tả đáp án
          Text
          (
            description,
            style: TextStyle
            (
              color: Colors.black87,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      )
    );
  }
}