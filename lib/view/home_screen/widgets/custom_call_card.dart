import 'package:flutter/material.dart';

class CustomCallCard extends StatelessWidget {
  const CustomCallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      physics: ScrollPhysics(),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      "Create call link",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Share a link for your WhatsApp call",
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
              "Recent",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
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
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.arrow_outward,
                            color: Colors.green,
                            size: 17,
                          ),
                          Text("Today, 10:18 Am")
                        ],
                      ),
                      trailing: Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
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
