import 'package:flutter/material.dart';

class CustomChatCard extends StatelessWidget {
  const CustomChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          Row(
            children: [CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
        ),SizedBox(width: 10,),
        Column(children: [
          Text("UserName"),SizedBox(height: 10,),
          Text("Message"),
        ],),],
        
          ),

          Column(
            children: [
            Text("12:00 Pm"),SizedBox(height: 10,),
            CircleAvatar(radius: 10,
            backgroundColor: Colors.green,
            child: Text("1",style: TextStyle(color: Colors.white,fontSize: 11),),)
          ],)
        
        
  
  
      ],
    ),

    );
  }
}