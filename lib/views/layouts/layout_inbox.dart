import 'dart:io';
import 'package:baara_app/views/screens/screen_inboxconservation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../screens/screen_inboxfilter.dart';
import '../screens/screen_profile_notification.dart';

class InboxLayout extends StatefulWidget {
  const InboxLayout({Key? key}) : super(key: key);

  @override
  State<InboxLayout> createState() => _InboxLayoutState();
}

class _InboxLayoutState extends State<InboxLayout> {
  var file;
  void pickImage() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image!=null) {
      setState(() {
        file=image.path;
      });
    }  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: 125,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff3368FF),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo 1.png',
                    height: 25,
                  ),
                  SizedBox(width: 160),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                          return ProfileNotification();
                        }));
                      },
                      icon: Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        showDialog<void>(
                          context: context,
                          builder: (BuildContext dialogContext) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              title: Text(
                                'Upload Profile Image',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              content: Container(
                                height: 200,
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: pickImage,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/gallery 1.png",
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Gallery",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 48,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xff000000).withOpacity(0.1),
                                            ),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            "assets/images/photos 1.png",
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Photos",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 48,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xff000000).withOpacity(0.1),
                                            ),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            "assets/images/camera 1.png",
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Camera",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    if (file != null)
                                      Image.file(
                                        file,
                                      ),
                                  ],
                                ),
                              ),
                            );


                          },
                        );
                      },
                      icon: Icon(
                        Icons.person_pin,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Positioned(
              top: 100,
              left: 10,
              right: 10,
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffB5C2E6),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Inbox",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            InkWell(
                              child:
                                  Image.asset("assets/images/filtericon-4.png"),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return InboxFilter();
                                }));
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: ScrollPhysics(),
                          itemCount: 30,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                ListTile(
                                  onTap: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                                      return ScreenInboxConservation();
                                    }));
                                  },
                                  leading: Image.asset("assets/images/inbox.png"),
                                  title: Text(
                                    "john_smith",
                                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                                  ),
                                  subtitle: Text(
                                    'hey john,\n I’m looking for a video editor for...',
                                  ),
                                  trailing: Text(
                                    "3 hr",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Container(
                                  width: 230,
                                  child: Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      )

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
