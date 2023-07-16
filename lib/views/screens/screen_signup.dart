import 'package:baara_app/views/screens/screen_homepage.dart';
import 'package:baara_app/views/screens/screen_signin.dart';
import 'package:baara_app/widgets/textField.dart';
import 'package:flutter/material.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({super.key});

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

bool isChecked = false;
String gender = "Male";

class _ScreenSignUpState extends State<ScreenSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            height: 135,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff3368FF),
            child: Center(child: Image.asset('assets/images/logo 1.png')),
          ),
          Positioned(
            top: 110,
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
            top: 120,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Join Baara+",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(children: [
                      BaarahTextField(
                        hintText: "John Smi |",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BaarahTextField(
                        hintText: "Email Address",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BaarahTextField(
                        hintText: "Email Address",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BaarahTextField(
                        hintText: "Phone Number",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BaarahTextField(
                        hintText: "Address",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                  ),
                  Text(
                    "      Select Gender",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 7,),
                          Radio(
                            value: "Male",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            },
                          ),
                          Text("Male"),
                          Radio(
                            value: "Female",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            },
                          ),
                          Text("Female"),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 7,),
                      Checkbox(
                          value: isChecked,
                          onChanged: (onTapValue) {
                            setState(() {
                              isChecked = onTapValue!;
                            });
                          }),
                      Text(
                        "By joining I agree to receive emails from Baara+",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      )
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text("Sign Up"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        fixedSize: Size(300, 50),
                        backgroundColor: Color(0xffF13B2D),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                                      borderRadius: BorderRadius.circular(20)),
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
                                              color:
                                                  Colors.black.withOpacity(.5),
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: 2,
                                            itemBuilder: (BuildContext context,
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
                                                  style: TextStyle(fontSize: 8),
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
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Facebook will share your name, email\naddress, and profile picture with Baara+.\nBefore using this app, you can review Baara+’s privacy policy and terms of services.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey),
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
                                    borderRadius: BorderRadius.circular(20)),
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
                                            color: Colors.black.withOpacity(.5),
                                            fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: 2,
                                          itemBuilder: (BuildContext context,
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
                                                style: TextStyle(fontSize: 8),
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
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Google will share your name, email\naddress, and profile picture with Baara+.\nBefore using this app, you can review Baara+’s privacy policy and terms of services.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child:
                            Image.asset("assets/images/Google - Original.png"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already a member?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return ScreenSignIn();
                            }));
                          },
                          child: Text('Sign in'))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    )
    );
  }
}
