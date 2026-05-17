import 'package:app_tieng_anh/ui/widgets/listening_widgets.dart';
import 'package:app_tieng_anh/ui/widgets/question_widgets.dart';
import 'package:flutter/material.dart';

class ListeningScreen extends StatefulWidget
{

ListeningScreen({super.key});
 
  @override
  State<ListeningScreen> createState() => ListeningScreenState();
}
 
class ListeningScreenState extends State<ListeningScreen> { 
 
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
          // Progress
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
            [
              Text
              (
                "Tiến độ bài học",
                style: TextStyle(fontSize: 12, color: Color(0xFF9098B1))
              ),
              Text
              (
                "4 / 10 câu",
                style: TextStyle
                (
                    fontSize: 12,
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.bold
                )
              ),
            ],
          ),

          SizedBox(height: 16),
 
          // Audio player card
          ListeningWidget(),

          SizedBox(height: 20),
 
          
         
 
          // Answer options
          QuestionWidgets(),
        ],
      ),
    );
  }
}