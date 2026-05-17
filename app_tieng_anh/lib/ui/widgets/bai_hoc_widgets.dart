import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class BaiHocWidgets extends StatelessWidget {
  const BaiHocWidgets({super.key});
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
              color: const Color.fromARGB(255, 233, 233, 240),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Icon
            (
              Icons.lock,
              size: 10,
              color: const Color.fromARGB(255, 96, 110, 142),
            ),
          ),

        SizedBox(width: 20,),
        //Thông tin bài học
        Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            //Bài
            Text
            (
              "Bài 03",
              style: TextStyle
              (
                fontSize: 12,
                color: const Color.fromARGB(255, 96, 110, 142),
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
                color: const Color.fromARGB(255, 96, 110, 142)
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
                  color: const Color.fromARGB(255, 96, 110, 142),
                ),
                SizedBox(width: 2,),
                Text
                (
                  "30 phút",
                  style: TextStyle
                  (
                    fontSize: 11,
                    color: const Color.fromARGB(255, 96, 110, 142),
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

  @Preview(name: "Bai Hoc Widget")
  static Widget preview() {
    return const BaiHocWidgets();
  }
}
