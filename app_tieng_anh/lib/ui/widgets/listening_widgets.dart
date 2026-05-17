import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class ListeningWidget extends StatefulWidget
{
  const ListeningWidget({super.key});

  @override
  State<ListeningWidget> createState() => ListeningWidgetState();

  @Preview(name: "Listening Widget")
  static Widget preview() => ListeningWidget();
 

}

class ListeningWidgetState extends State<ListeningWidget>
{
  bool isPlaying=true;
  double progress=0.5; // Tiến độ hiện tại của audio (giây)
  final double totalDuration=120.0; // Tổng thời lượng của audio (giây)

  //Tua lùi 10s
  void rewind10s()
  {
    setState(() {
      progress = (progress*totalDuration - 10) / totalDuration;

      if(progress < 0)
      {
        progress = 0;
      }
    });
  }

  //Tua tới 10s
  void forward10s()
  {
    setState(() {
      progress = (progress*totalDuration + 10) / totalDuration;

      if(progress > 1)
      {
        progress = 1;
      }
    });
  }

  //Hàm thay đổi nút play/pause
  void togglePlayPause()
  {
    setState(() {
      isPlaying = !isPlaying;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      height: 500,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration
      (
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),

      child: Column
      (
        children: 
        [
          Spacer(),
          //Audio avartar
          Container
          (
            width: 170,
            height: 170,
            decoration: BoxDecoration
            (
              shape: BoxShape.circle,
              color: Colors.white,
            ),

            padding: EdgeInsets.all(10),

            child: ClipOval
            (
              // child: Image.network
              // (
              //   "https://images.unsplash.com/photo-1516280440614-37939bbacd81?q=80&w=1200&auto=format&fit=crop",
              //   fit: BoxFit.cover,
              // ),

              child: Container
              (
                decoration: BoxDecoration
                (
                  shape: BoxShape.circle,
                  color: Colors.blue[200],
                ),
              ),
            ),
          ),

          //Tên bài nghe
          Text
          (
            "Đoạn hội thoại số 4",
            style: TextStyle
            (
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 20,),

          //Thanh thời gian
          Row
          (
            children: 
            [
              // Thời gian đã phát
              Text
              (
                "${(progress*totalDuration/60).floor()}:${((progress*totalDuration)%60).floor().toString().padLeft(2, '0')}",
                style: TextStyle
                (
                  color: Colors.grey,
                ),
              ),

              Flexible
              (
                
                child: Slider
                (
                  value: progress,
                  onChanged: (value) 
                  {
                    setState(() 
                    {
                      progress = value;
                    });
                  },
                ),
              ),

              // Thời gian tổng của đoạn âm thanh
              Text
              (
                "${(totalDuration/60).floor()}:${(totalDuration%60).floor().toString().padLeft(2, '0')}",
                style: TextStyle
                (
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          SizedBox(height: 20,),
          //Control buttons
          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: 
            [
              // Rewind
              IconButton
              (
                onPressed: rewind10s,
                icon: Icon
                (
                  Icons.replay_10,
                  size: 35,
                  color: Color(0xff4a4a6a),
                ),
              ),

              // Play Pause
              GestureDetector
              (
                onTap: togglePlayPause,

                child: Container
                (
                  width: 80,
                  height: 80,

                  decoration:BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff4a73f0),
                  ),

                  child: Icon(
                    isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),

              // Forward
              IconButton
              (
                onPressed: forward10s,
                icon:Icon
                (
                  Icons.forward_10,
                  size: 35,
                  color: Color(0xff4a4a6a),
                ),
              ),
            ],
          ),

          Spacer()
        ],
      ),
    );
  }

  
}