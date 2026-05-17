import 'package:flutter/material.dart';

class MainUser extends StatefulWidget 
{
  MainUser({super.key});

  @override
  State<MainUser> createState() => MainUserState();
}

class MainUserState extends State<MainUser> 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text
        (
          "Ten nguoi dung ",
          style: TextStyle
          (
            fontSize: 20,
            color: Colors.blue.shade900
          ),
        ),
        leading: IconButton
        (
          onPressed: (){}, 
          icon: Icon
          (
            Icons.account_circle_outlined,
            color: Colors.blue.shade900,  
          )
        )
      ),
    );
  }
}