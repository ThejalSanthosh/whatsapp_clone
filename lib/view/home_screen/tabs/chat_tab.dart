import 'package:flutter/material.dart';
import 'package:test_project/dummy_db.dart';
import 'package:test_project/view/home_screen/widgets/custom_chat_card.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      itemCount: DummyDb.listChat.length,
      itemBuilder: (context, index) => CustomChatCard(
          name: DummyDb.listChat[index]["User_Name"],
          message: DummyDb.listChat[index]["last_Message"],
          time: DummyDb.listChat[index]["time"],
          profilePic: DummyDb.listChat[index]["profile_Pic"],
          count: DummyDb.listChat[index]["count"]),
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
