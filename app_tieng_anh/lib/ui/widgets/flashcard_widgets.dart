import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class FlashcardWidgets extends StatefulWidget
{
  const FlashcardWidgets({super.key, this.isBackCard = false});

  final bool isBackCard;

  @override
  State<FlashcardWidgets> createState() => FlashcardWidgetsState();

  @Preview(name: "Flashcard Widget")
  static Widget previewFront() => FlashcardWidgets(isBackCard: false);

}

class FlashcardWidgetsState extends State<FlashcardWidgets>
{
  bool isBackCard=false;

  @override
  Widget build(BuildContext context) 
  {
    return GestureDetector
    (
      onTap: () => setState(() 
      {
        isBackCard = !isBackCard;
      }),
      child: isBackCard ? backCard() : frontCard(),
    );
    
  }

  //Mặt trước của flashcard
  Widget frontCard()
  {
    return Container
    (
      height: 250,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration
      (
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),

      child: Column
      (
        children: 
        [
          //Icon lưu ý và icon loa
           Row
          (
            mainAxisAlignment: MainAxisAlignment.end,
            children: 
            [
              Icon
              (
                Icons.star_border,
                color: Colors.blue[900],
                size: 20,
              ),

              SizedBox(width: 20,),
              Icon
              (
                Icons.volume_up_outlined,
                color: Colors.blue[900],
                size: 20,
              ),
            ],
          ),

          Spacer(),
          //Từ vựng
          Container
          (
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration
            (
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text
            (
              "Berry",
              style: TextStyle
              (
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          

          SizedBox(height: 5,),

          //Phiên âm
          Text
          (
            "Phiên âm",
            style: TextStyle
            (
              fontSize: 14,
              color: Colors.blue[900],
            ),
          ),

          Spacer(),
        ],
      ),
    );
  }

  //Mặt sau của flashcard
  Widget backCard()
  {
    return Container
    (
      height: 250,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration
      (
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),

      child: Column
      (
        children: 
        [
          //Icon lưu ý và icon loa
          Row
          (
            mainAxisAlignment: MainAxisAlignment.end,
            children: 
            [
              Icon
              (
                Icons.star_border,
                color: Colors.blue[900],
                size: 20,
              ),

              SizedBox(width: 20,),
              Icon
              (
                Icons.volume_up_outlined,
                color: Colors.blue[900],
                size: 20,
              ),
            ],
          ),

          Spacer(),
          //Từ vựng
          Container
          (
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration
            (
              color: Colors.indigo[50],
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text
            (
              "Quả mọng",
              style: TextStyle
              (
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(height: 5,),

          //Phiên âm
          Text
          (
            "Phiên âm",
            style: TextStyle
            (
              fontSize: 14,
              color: Colors.blue[900],
            ),
          ),

          //Ví dụ
          SizedBox(height: 10,),
          Text
          (
            "Ví dụ về từ vựng",
            style: TextStyle
            (
              fontSize: 16,
              color: Colors.black87,
            ),
          ),

          Spacer(),
        ],
      ),
    );
  }

  
}

