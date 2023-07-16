import 'package:baara_app/views/screens/screen_forgotpassword.dart';
import 'package:baara_app/views/screens/screen_homepage.dart';
import 'package:flutter/material.dart';

import '../../widgets/textField.dart';

class ScreenSignIn extends StatefulWidget {
  const ScreenSignIn({super.key});

  @override
  State<ScreenSignIn> createState() => _ScreenSignInState();
}

class _ScreenSignInState extends State<ScreenSignIn> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            height: 190,
            width: double.infinity,
            color: Color(0xff3368FF),
            child: Center(child: Image.asset('assets/images/logo 1.png')),
          ),
          Positioned(
            top: 160,
            left: 15,
            right: 15,
            child: Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffB5C2E6),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.only(right: 12.0, left: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Sign In to Baara+",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      height: 55,
                      child: BaarahTextField(

                        hintText: 'Email Address / Phone Number',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 55,
                      child: BaarahTextField(
                        hintText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            onChanged: (onTapValue) {
                              setState(() {
                                isChecked = onTapValue!;
                              });
                            }),
                        Text(
                          "Stay Connected",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return ScreenForgotPassword();
                        }));
                      },
                      child: Text(
                        "ForgotPassword ?",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                          return HomePage();
                        }));
                      },
                      child: Text("Sign In"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        fixedSize: Size(300, 50),
                        backgroundColor: Color(0xffF13B2D),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: InkWell(
                              onTap: () {
                                showDialog<void>(
                                  context: context,
                                  builder: (BuildContext dialogContext) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                      content: Container(
                                        height: 350,
                                        width: 500,
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/images/Vector (1).png"),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text("Choose an Account"),
                                            Text(
                                              "continue to Baara+",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.5),
                                                  fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: 2,
                                                itemBuilder:
                                                    (BuildContext context,
                                                    int index) {
                                                  return ListTile(
                                                    leading: Image.asset(
                                                        "assets/images/Ellipse 20.png"),
                                                    title: Text(
                                                      "Johnson Smith",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                          FontWeight.w500),
                                                    ),
                                                    subtitle: Text(
                                                      "johnson_smith@gmail.com",
                                                      style:
                                                      TextStyle(fontSize: 8),
                                                    ),
                                                    trailing: Icon(
                                                      Icons.close_rounded,
                                                      color: Colors.red,
                                                    ),
                                                  );
                                                }),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 12.0),
                                                  child: Icon(
                                                    Icons.people_alt_outlined,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  "Use Another account",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 20,),
                                            Text(
                                              "Facebook will share your name, email\naddress, and profile picture with Baara+.\nBefore using this app, you can review Baara+’s privacy policy and terms of services.",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 11,color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Image.asset("assets/images/Vector (1).png"),
                            ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog<void>(
                              context: context,
                              builder: (BuildContext dialogContext) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                  content: Container(
                                    height: 350,
                                    width: 500,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                            "assets/images/Google - Original.png"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Choose an Account"),
                                        Text(
                                          "continue to Baara+",
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(.5),
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: 2,
                                            itemBuilder:
                                                (BuildContext context,
                                                int index) {
                                              return ListTile(
                                                leading: Image.asset(
                                                    "assets/images/Ellipse 20.png"),
                                                title: Text(
                                                  "Johnson Smith",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                      FontWeight.w500),
                                                ),
                                                subtitle: Text(
                                                  "johnson_smith@gmail.com",
                                                  style:
                                                  TextStyle(fontSize: 8),
                                                ),
                                                trailing: Icon(
                                                  Icons.close_rounded,
                                                  color: Colors.red,
                                                ),
                                              );
                                            }),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0),
                                              child: Icon(
                                                Icons.people_alt_outlined,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "Use Another account",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 20,),
                                        Text(
                                          "Google will share your name, email\naddress, and profile picture with Baara+.\nBefore using this app, you can review Baara+’s privacy policy and terms of services.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 11,color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Image.asset("assets/images/Google - Original.png"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don’t have an account?"),
                        TextButton(onPressed: () {}, child: Text("Join Us"))
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
