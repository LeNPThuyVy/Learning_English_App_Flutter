import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class BaiHocDoneWidgets extends StatelessWidget {
  const BaiHocDoneWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return Container
    (
      
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration
      (
        color: const Color.fromARGB(255, 240, 239, 240),
        borderRadius: BorderRadius.circular(10)
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
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(5)
            ),
            child: Icon
            (
              Icons.done_all,
              size: 10,
              color: Colors.green[700],
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
              "Bài 03",
              style: TextStyle
              (
                fontSize: 12,
                color: Colors.black,
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
                color: Colors.black,
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
                  color: Colors.black,
                ),
                SizedBox(width: 2,),
                Text
                (
                  "30 phút",
                  style: TextStyle
                  (
                    fontSize: 11,
                    color: Colors.black,
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

  @Preview(name: "Bai Hoc Done Widget")
  static Widget preview() {
    return const BaiHocDoneWidgets();
  }
}
