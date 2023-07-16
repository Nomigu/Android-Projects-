import 'package:baara_app/views/screens/screen_notifications.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
          "Settings",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "General",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(onTap: (){
             Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
               return NotificationsScreen();
             }));
            },
              child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff5B606D).withOpacity(0.2),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          "Notifications",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        width: 175,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                              return NotificationsScreen();
                            }));
                          },
                          icon: Icon(Icons.navigate_next_outlined))
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff5B606D).withOpacity(0.2),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Notifications Sound",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 132,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.navigate_next_outlined))
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff5B606D).withOpacity(0.2),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Security",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 202,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.navigate_next_outlined))
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff5B606D).withOpacity(0.2),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Terms of Services",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.navigate_next_outlined))
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff5B606D).withOpacity(0.2),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 165,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.navigate_next_outlined))
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff5B606D).withOpacity(0.2),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Language",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.navigate_next_outlined))
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff5B606D).withOpacity(0.2),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Logout",
                        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      width: 208,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.navigate_next_outlined)),
                  ],
                )),
            SizedBox(height: 120,),
            Center(child: Text("Version 1.0.0",style: TextStyle(color: Colors.grey),))
          ],
        ),
      ),
    );
  }
}
