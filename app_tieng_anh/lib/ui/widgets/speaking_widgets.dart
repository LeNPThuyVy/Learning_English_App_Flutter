import 'package:flutter/material.dart';

class SpeakingWidgets extends StatefulWidget
{
  SpeakingWidgets({super.key});
  @override
  State<SpeakingWidgets> createState()=> SpeakingWidgetsState();
}

class SpeakingWidgetsState extends State<SpeakingWidgets>
{
  String sentenceSpeaking="The collaborative effort was instrumental in our success";
  bool isSampleSpeaking=false;
  bool isYourSpeaking=false;

  void StartSample()
  {
    setState(() {
      isSampleSpeaking= !isSampleSpeaking;
      if(isSampleSpeaking==true && isYourSpeaking==true)
      {
        isYourSpeaking=!isYourSpeaking;
      }
    });
  }

  void StartSpeaking()
  {
    setState(() {
      isYourSpeaking= !isYourSpeaking;
      if(isSampleSpeaking==true && isYourSpeaking==true)
      {
        isSampleSpeaking=!isSampleSpeaking;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container
    (
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration
      (
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column
      (
        children: 
        [
          //Câu speaking mẫu
          Text
          (
            sentenceSpeaking,
            style: TextStyle
            (
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),

          SizedBox(height: 15,),

          //Nút nghe mẫu và nút nói
          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
            [
              //Nút nghe bài
              GestureDetector
              (
                
                onTap: StartSample,
                child: Container
                (
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration
                  (
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black45, width: 1)
                  ),
                  child: Row
                  (
                    children: 
                    [
                      Icon
                      (
                        Icons.volume_up_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5,),
                      const Text
                      (
                        "Nghe mẫu",
                        style: TextStyle
                        (
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Nút ghi âm

              GestureDetector
              (
                onTap: StartSpeaking,
                child: Container
                (
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration
                  (
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon
                  (
                    Icons.mic,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  
}