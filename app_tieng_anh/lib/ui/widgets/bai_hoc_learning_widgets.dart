import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class BaiHocLearningWidgets extends StatelessWidget {
  const BaiHocLearningWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return Container
    (
      
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration
      (
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow
          (
            color: Colors.blue,
            blurRadius: 10,
            offset: Offset(0, 0.5)
          )
        ]
      ),

      child:Row
      (
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [
          //Icon bài học
          Container
          (
            width: 25,
            height: 25,
            decoration: BoxDecoration
            (
              color: Colors.blueAccent[100],
              borderRadius: BorderRadius.circular(5)
            ),
            child: Icon
            (
              Icons.arrow_forward_ios,
              size: 10,
              color: Colors.white,
            ),
          ),

        SizedBox(width: 20,),
        //Thông tin bài học
        Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            //Bài
            Text
            (
              "Bài 03 - Đang học",
              style: TextStyle
              (
                fontSize: 12,
                color: Colors.white54,
              ),
            ),
            //Tên bài
            Text
            (
              "Presentation your project",
              style: TextStyle
              (
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            //Thời gian
            Row
            (
              children: 
              [
                Icon
                (
                  Icons.play_circle_outline,
                  size:10,
                  color: Colors.white54,
                ),
                SizedBox(width: 2,),
                Text
                (
                  "30 phút",
                  style: TextStyle
                  (
                    fontSize: 11,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),

          ],
        )
        ],
      ),
    );
  }

  @Preview(name: "Bai Hoc Learning Widget")
  static Widget preview() {
    return const BaiHocLearningWidgets();
  }
}
