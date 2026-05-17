import 'package:app_tieng_anh/ui/widgets/flashcard_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class FlashcardVocabScreen extends StatefulWidget
{
  FlashcardVocabScreen({super.key});

  @override
  FlashcardVocabScreenState createState()=> FlashcardVocabScreenState();

  @Preview(name:"Flashcard Screen")
  static Widget preview()=> FlashcardVocabScreen();
}

class FlashcardVocabScreenState extends State<FlashcardVocabScreen>
{
  @override
  Widget build(BuildContext context) 
  {
    return SingleChildScrollView
    (
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          
          // Chủ đề row
          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
            [
              Row
              (
                children: 
                [
                  Text
                  (
                    'CHỦ ĐỀ: ',
                    style: TextStyle
                    (
                      fontSize: 12,
                      color: Color(0xFF9098B1),
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Container
                  (
                    padding:EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration
                    (
                      color: Color(0xFFE8EDFF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text
                    (
                      'FOOD',
                      style: TextStyle
                      (
                        fontSize: 11,
                        color: Color(0xFF3D5AF1),
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ],
              ),
              Text
              (
                '12/35 từ',
                style: TextStyle(fontSize: 12, color: Color(0xFF9098B1)),
              ),
            ],
          ),
          SizedBox(height: 16),
 
          // Word Card
          Container
          (
            child: FlashcardWidgets(),
          ),

          SizedBox(height: 20),
 
          // Navigation buttons
          Row
          (
            children: 
            [
              Expanded
              (
                child: GestureDetector
                (
                  onTap: () {},
                  child: Container
                  (
                    height: 48,
                    decoration: BoxDecoration
                    (
                      border: Border.all(color: const Color(0xFF3D5AF1)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center
                    (
                      child: Text(
                        'QUAY LẠI',
                        style: TextStyle
                        (
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3D5AF1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 12),
              Expanded
              (
                child: GestureDetector
                (
                  onTap: () {},
                  child: Container
                  (
                    height: 48,
                    decoration: BoxDecoration
                    (
                      color:  Color(0xFF3D5AF1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center
                    (
                      child: Text
                      (
                        'ĐÃ THUỘC',
                        style: TextStyle
                        (
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),

        ],
      ),
    );
  }
  
}