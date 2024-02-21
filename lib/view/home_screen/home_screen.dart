import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test_project/view/home_screen/tabs/calls_tab.dart';
import 'package:test_project/view/home_screen/tabs/chat_tab.dart';
import 'package:test_project/view/home_screen/tabs/status_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.chat,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            SizedBox(
              width: 1,
            )
          ],
          bottom: TabBar(
              dividerHeight: 0,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.yellow,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  text: "Chat",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                )
              ]),
        ),
        body: TabBarView(children: [ChatTab(), StatusTab(), CallsTab()]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(
            Icons.camera_alt_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
