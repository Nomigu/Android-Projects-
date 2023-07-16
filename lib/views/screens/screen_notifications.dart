import 'package:baara_app/widgets/custom%20checkbox.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool isChecked=false;
  bool isChecked1=false;
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
          SizedBox(height: 20,),
            Text("SELECT NOTIFICATION METHOD"),
            SizedBox(height: 10,),
            CustomCheckbox(isChecked: isChecked, onChanged:(value){
              setState(() {
                isChecked=value!;

              });
            },
            text: "Push Notification",
            ),
            SizedBox(height: 10,),
            CustomCheckbox(isChecked: isChecked1, onChanged:(value){
              setState(() {
                isChecked1=value!;

              });
            },
              text: "Email Notification",
            )
          ],
        ),
      ),
    );
  }
}
