import 'package:baara_app/views/screens/screen_otp.dart';
import 'package:baara_app/views/screens/screen_signin.dart';
import 'package:baara_app/widgets/textField.dart';
import 'package:flutter/material.dart';

class ScreenResetPassword extends StatefulWidget {
  const ScreenResetPassword({Key? key}) : super(key: key);

  @override
  _ScreenResetPasswordState createState() => _ScreenResetPasswordState();
}

class _ScreenResetPasswordState extends State<ScreenResetPassword> {
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return ScreenOTP();
                                },
                              ));
                            },
                            icon: Icon(Icons.arrow_back_outlined)),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "Reset Password",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        "Create a new password",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Center(
                      child: BaarahTextField(
                        hintText: "New Password",
                      ),
                    ),
                  SizedBox(height: 30,),
                    Center(
                      child: BaarahTextField(
                        hintText: "Confirm Password",
                      ),
                    ),
                    SizedBox(height: 80,),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext context) {
                                return ScreenSignIn();
                              }));
                        },
                        child: Text("Update Password"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          fixedSize: Size(300, 50),
                          backgroundColor: Color(0xffF13B2D),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
