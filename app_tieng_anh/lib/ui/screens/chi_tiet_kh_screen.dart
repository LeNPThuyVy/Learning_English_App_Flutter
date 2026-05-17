import 'package:app_tieng_anh/ui/widgets/bai_hoc_widgets.dart';
import 'package:flutter/material.dart';

class ChiTietKhScreen extends StatelessWidget
{
  ChiTietKhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView
    (
      padding: EdgeInsets.all(15),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          //Bìa khóa học (Hình ảnh, Tên khóa học, Mô tả)
          Container
          (
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
            decoration: BoxDecoration
            (
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(142, 49, 106, 98)
            ),
            child: Column
            (
              children: 
              [
                Text
                (
                  "Tiếng anh dùng trong thương mại và kinh tế",
                  style: TextStyle
                  (
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),

                Text
                (
                  "Trình bày và giao tiếp chuyên nghiệp trong môi trường quốc tế đa văn hóa.",
                  style: TextStyle
                  (
                    color: Colors.white60, 
                    fontSize: 14
                    ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),

          //Tiến độ học tập
          Container
          (
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration
            (
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: 
              [
                BoxShadow
                (
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(0, 0.5)
                )
              ]
            ),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                Text
                (
                  'Tiến độ khóa học', 
                  style: TextStyle
                  (
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black
                  )
                ),
                
                SizedBox(height: 8),

                Text
                (
                  'Bạn đang làm rất tốt!', 
                  style: TextStyle
                  (
                    fontSize: 12, color: Colors.blueGrey
                  )
                ),
                SizedBox(height: 20),

                
                Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    buildSmallBentoBox('08', 'Hoàn thành', Colors.blueGrey.shade50, Colors.orange),
                    buildSmallBentoBox('12', 'Tổng bài', Colors.blueGrey.shade50, Colors.green),
                    buildSmallBentoBox('14H', 'Đã tích lũy', Colors.blueGrey.shade50, Colors.brown.shade500),
                  ],
                ),
              ],
            ),
          ),

          
          SizedBox(height: 20,),

          Text
          (
            "Danh sách bài học",
            style: TextStyle
            (
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),

          SizedBox(height: 10,),
          //Danh sách nội dung bài học
          GridView.builder
          (
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              mainAxisExtent: 80
            ), 
            itemCount: 5,
            itemBuilder: (context,index)
            {
              return GestureDetector
              (
                onTap: (){},
                child: BaiHocWidgets(),
              );
            }
          )
        ],
      ),
    );
  }

}

Widget buildSmallBentoBox(String value, String label, Color bgColor, Color textColor) {
  return Container
  (

    padding: EdgeInsets.all(15),
    decoration: BoxDecoration
    (
      color: bgColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Text
        (
          value, 
          style: TextStyle
          (
            fontSize: 18, 
            fontWeight: FontWeight.bold, 
            color: textColor
          )
        ),
        Text
        (
          label, 
          style: const TextStyle
          (
            fontSize: 14, 
            color: Colors.black54
          ), 
          textAlign: TextAlign.center
        ),
      ],
    ),
  );
}