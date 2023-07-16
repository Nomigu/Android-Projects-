import 'package:flutter/material.dart';

class ProfileNotification extends StatefulWidget {
  const ProfileNotification({super.key});

  @override
  State<ProfileNotification> createState() => _ProfileNotificationState();
}

class _ProfileNotificationState extends State<ProfileNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.white.withOpacity(0.9),
        elevation: 0,
        toolbarHeight: 70,
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Earlier",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
            SizedBox(height: 15,),
            ListView.separated(
              itemBuilder: (BuildContext, context) {
                return Card(
                  child: Container(
                    height: 85,
                    child: ListTile(
                      leading: Image.asset("assets/images/baaraicon.png"),
                      title: Text(
                        "Congrats your ID was verified",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text("2 days ago"),
                    ),
                  ),
                );
              },
              shrinkWrap: true,
              itemCount: 3,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 15);
              },
            )
          ],
        ),
      ),
    );
  }
}
