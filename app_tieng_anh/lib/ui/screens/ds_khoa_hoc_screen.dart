import 'package:app_tieng_anh/ui/screens/chi_tiet_kh_screen.dart';
import 'package:app_tieng_anh/ui/widgets/khoa_hoc_widgets.dart';
import 'package:flutter/material.dart';

class DSKhoaHocScreen extends StatefulWidget {
  @override
  _DSKhoaHocScreenState createState() => _DSKhoaHocScreenState();
}

class _DSKhoaHocScreenState extends State<DSKhoaHocScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView
    (
      padding: EdgeInsets.all(50),

      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          //Title Screen
          Text
          (
            "Tìm kiếm khóa học",
            style: TextStyle
            (
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 15,),
          Text
          (
            "Khám phá lộ trình học tập phù hợp nhất với bạn",
            style: TextStyle
            (
              fontSize: 18,
              color: Colors.black87
            ),
          ),

          SizedBox(height: 25,),
          // Search Bar
          Container
          (
            decoration: BoxDecoration
            (
              boxShadow: 
                  [
                    BoxShadow
                    (
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: const Offset(0, 0.5)
                    )
                  ]
            ),
            child: TextField
            (
              decoration: InputDecoration
              (
                hintText: 'Tìm tên khóa học',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                hintStyle: TextStyle
                (
                  fontSize: 20,
                  color: Colors.grey.shade600
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder
                (
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none
                ),
              ),
            ),
          ),
            
            SizedBox(height: 20),
            
            //Nút tìm kiếm
            
            
            SizedBox(height: 20,),

            GridView.builder
              (
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                (
                  crossAxisCount: 1, //Hiển thị 1 cột
                  mainAxisSpacing: 20
                  
                ),
                itemCount: 5,
                itemBuilder: (context, index)
                {
                  return GestureDetector
                  (
                    onTap: ()
                    {
                      Navigator.push
                      (
                        context,
                        MaterialPageRoute
                        (
                          builder: (context) => ChiTietKhScreen(),
                        ),
                      );
                    },
                    child: 
                    KhoaHocWidgets(),
                        
                  ); 
                },
              )
        ],
      ),
    );
  }
}