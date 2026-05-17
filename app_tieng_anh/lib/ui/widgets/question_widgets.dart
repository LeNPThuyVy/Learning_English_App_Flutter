import 'package:app_tieng_anh/ui/widgets/choose_answer_widgets.dart';
import 'package:flutter/material.dart';

class QuestionWidgets extends StatefulWidget
{
  const QuestionWidgets({super.key});

  @override
  State<QuestionWidgets> createState() => QuestionWidgetsState();
}

class QuestionWidgetsState extends State<QuestionWidgets>
{
  @override
  Widget build(BuildContext context) {
    return Container
    (
      padding: EdgeInsets.all(10),
      child: Column
      (
  
        children: 
        [
          //title widget
          Container
          (
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration
            (
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text
            (
              "Câu hỏi trắc nghiệm",
              style: TextStyle
              (
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            ),
          ),

          SizedBox(height: 10,),
          //Câu hỏi
          Container
          (
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration
            (
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Text
          (
            "Đây là câu hỏi trắc nghiệm mẫu đùng cho cả bài nghe, ngữ pháp, ôn tập",
            style: TextStyle
            (
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          ),
          

          SizedBox(height: 15,),

          //4 đáp án
          ListView.builder
          (
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index)
            {
              return Column
              (
                children: 
                [
                  ChooseAnswerWidgets(),
                  SizedBox(height: 5,),
                ],
              );
            },
          ),

          SizedBox(height: 15,),
          //Nút kiểm tra đáp án

          GestureDetector
          (
            child: Container
            (
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration
              (
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text
              (
                "Kiểm tra đáp án",
                style: TextStyle
                (
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            onTap: () {},
          ),

        ],
      ),
    );
  }
}