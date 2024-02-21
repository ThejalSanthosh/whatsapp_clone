import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomStatusCard extends StatelessWidget {
  const CustomStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Status",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Status",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Tap to add status update",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w200),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Recent Updates",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) => ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                      ),
                      title: Text("Name"),
                      subtitle: Text("18 minutes ago"),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 20,
                    ))
          ],
        ),
      ),
    );
  }
}
