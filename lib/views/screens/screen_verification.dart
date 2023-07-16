import 'package:baara_app/views/screens/screen_forgotpassword.dart';
import 'package:flutter/material.dart';

import 'screen_otp.dart';

class ScreenVerification extends StatefulWidget {
  const ScreenVerification({super.key});

  @override
  State<ScreenVerification> createState() => _ScreenVerificationState();
}

class _ScreenVerificationState extends State<ScreenVerification> {

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
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:300.0),
                        child: IconButton(onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                            return ScreenForgotPassword();
                          }));
                        }, icon: Icon(Icons.arrow_back_outlined)),
                      ),
                      SizedBox(height: 30,),
                      Center(child: Icon(Icons.forward_to_inbox_rounded,size:80,color: Colors.blue,)),
                      SizedBox(height: 40),
                      Text("Email/Number Verification Required",textAlign: TextAlign.center,
                      style: TextStyle(fontWeight:FontWeight.w600,fontSize: 19,color: Colors.black),
                      ),
                      SizedBox(height: 20,),
                      Text("We have sent you a verification link to your \n "
                          " email/mobile. please click on the URL to\n  "
                          " verify your email",textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),),
                      SizedBox(
                        height: 100,
                      ),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                          return ScreenOTP();
                        }));
                      }, child: Text("Done"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          fixedSize: Size(300,50),
                          backgroundColor: Color(0xffF13B2D),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
