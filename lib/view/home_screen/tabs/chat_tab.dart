import 'package:flutter/material.dart';
import 'package:test_project/view/home_screen/widgets/custom_chat_card.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(

      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      itemCount: 20,
      itemBuilder: (context, index) => CustomChatCard(), separatorBuilder: (context, index) => Divider(), );          
  }
}