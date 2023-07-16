import 'package:baara_app/views/layouts/layout_savedservices.dart';
import 'package:baara_app/views/screens/screen_managerequests.dart';
import 'package:baara_app/views/screens/screen_payment.dart';
import 'package:baara_app/views/screens/screen_postrequest.dart';
import 'package:baara_app/views/screens/screen_profile_notification.dart';
import 'package:baara_app/views/screens/screen_setting.dart';
import 'package:flutter/material.dart';
import '../../widgets/textField.dart';

class ProfileLayout extends StatefulWidget {
  const ProfileLayout({super.key});

  @override
  State<ProfileLayout> createState() => _ProfileLayoutState();
}

class _ProfileLayoutState extends State<ProfileLayout> {
  bool switchValue = false;

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
                                    borderRadius: BorderRadius.circular(15)),
                                title: Text(
                                  'Upload Profile Image',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                content: Container(
                                  height: 180,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                              "assets/images/gallery 1.png"),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Gallery",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
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
                                                      color: Color(0xff000000)
                                                          .withOpacity(0.1)),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      10)),
                                              child: Image.asset(
                                                  "assets/images/photos 1.png")),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Photos",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
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
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.1)),
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: Image.asset(
                                                "assets/images/camera 1.png"),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Camera",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ));
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        ListTile(
                          leading: Image.asset("assets/images/profilepic.png"),
                          title: Text(
                            "john_smith",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                            '\$5382.00 USD',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        BaarahTextField(
                          hintText: "Seller Mode",
                          suffix: Switch(
                            value: switchValue,
                            onChanged: (bool value) {
                              setState(() {
                                switchValue = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "My Baara+",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return SavedServicesLayout();
                            }));
                          },
                          child: Container(
                            height: 50,
                            width: 320,
                            child: Row(
                              children: [
                                Text(
                                  "Saved Services",
                                  style: TextStyle(),
                                ),
                                SizedBox(
                                  width: 177,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return SavedServicesLayout();
                                      }));
                                    },
                                    icon: Icon(Icons.navigate_next_outlined)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Buying",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return PostRequestScreen();
                            }));
                          },
                          child: Container(
                            height: 20,
                            width: 320,
                            child: Row(
                              children: [
                                Text(
                                  "Post a job Request",
                                  style: TextStyle(),
                                ),
                                SizedBox(
                                  width: 155,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return PostRequestScreen();
                                      }));
                                    },
                                    icon: Icon(Icons.navigate_next_outlined)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return MangeRequestsScreen();
                            }));
                          },
                          child: Container(
                            height: 20,
                            width: 320,
                            child: Row(
                              children: [
                                Text(
                                  "Manage Requests",
                                  style: TextStyle(),
                                ),
                                SizedBox(
                                  width: 159,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return MangeRequestsScreen();
                                      }));
                                    },
                                    icon: Icon(Icons.navigate_next_outlined)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 20,
                          width: 320,
                          child: Row(
                            children: [
                              Text(
                                "List of Customers",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 159,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.navigate_next_outlined)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "General",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return SettingScreen();
                            }));
                          },
                          child: Container(
                            height: 20,
                            width: 320,
                            child: Row(
                              children: [
                                Text(
                                  "Settings",
                                  style: TextStyle(),
                                ),
                                SizedBox(
                                  width: 219,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return SettingScreen();
                                      }));
                                    },
                                    icon: Icon(Icons.navigate_next_outlined)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return ScreenPayments();
                            }));
                          },
                          child: Container(
                            height: 20,
                            width: 320,
                            child: Row(
                              children: [
                                Text(
                                  "Payments",
                                  style: TextStyle(),
                                ),
                                SizedBox(
                                  width: 205,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return ScreenPayments();
                                      }));
                                    },
                                    icon: Icon(Icons.navigate_next_outlined)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
