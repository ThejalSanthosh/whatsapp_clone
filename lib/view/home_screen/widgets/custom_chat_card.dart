import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomChatCard extends StatelessWidget {
  const CustomChatCard(
      {super.key,
      required this.name,
      required this.message,
      required this.time,
      required this.profilePic,
      required this.count});

  final String name;
  final String message;
  final String time;
  final String profilePic;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(profilePic),
                backgroundColor: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  SizedBox(
                    height: 10,
                  ),
                  Text(message),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(time),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: count > 0 ? true : false,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Text(
                    count.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
