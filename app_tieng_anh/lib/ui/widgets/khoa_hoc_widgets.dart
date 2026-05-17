import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class KhoaHocWidgets extends StatelessWidget {
  // KhoaHoc khoaHoc;
  // KhoaHocWidgets
  // (
  //   {
  //     required this.khoaHoc
  //   }
  // );
  const KhoaHocWidgets({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      // height: 350,
      //width: 300,
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration
      (
        color: const Color.fromARGB(255, 240, 239, 240),
        borderRadius: BorderRadius.circular(40)
      ),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          // Image
          // (
          //   image: AssetImage("assets/images/khoa_hoc.png"),
          //   width: 250,
          //   height: 200,
          //   fit: BoxFit.cover,
          // ),
          Expanded
          (
            child: Container
            (
              // width: 250,
              // height: 200,
              decoration: BoxDecoration
              (
                color: const Color.fromARGB(255, 28, 28, 34),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
              ),
            ),
          ),
          SizedBox(height: 15),
          Container
          (
            margin: EdgeInsets.all(15),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
              Text
                (
                  "Tiếng Anh giao tiếp cơ bản ",
                  style: TextStyle
                  (
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 96, 110, 142),
                  ),
                ),
              SizedBox(height: 10),
              
              Row
              (
                children: 
                [
                  Icon
                  (
                    Icons.menu_book,
                    color: const Color.fromARGB(255, 96, 110, 142),
                    size: 12,
                  ),
                  SizedBox(width: 5),
                  Text
                  (
                    "12 bài học",
                    style: TextStyle
                    (
                      fontSize: 14,
                      color: const Color.fromARGB(255, 96, 110, 142)
                    ),
                  ),
                ],
              ) 
            ],
            ),
          ),
          
        
        ],
      ),
    );
  }

  @Preview(name: "Khoa Hoc Widget")
  static Widget preview() {
    return const KhoaHocWidgets();
  }
}

