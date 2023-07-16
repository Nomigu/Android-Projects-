import 'package:baara_app/views/screens/screen_signin.dart';
import 'package:baara_app/views/screens/screen_verification.dart';
import 'package:baara_app/widgets/textField.dart';
import 'package:flutter/material.dart';

class ScreenForgotPassword extends StatefulWidget {
  const ScreenForgotPassword({super.key});

  @override
  State<ScreenForgotPassword> createState() => _ScreenForgotPasswordState();
}

class _ScreenForgotPasswordState extends State<ScreenForgotPassword> {
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
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                              return ScreenSignIn();
                            }));
                          }, icon: Icon(Icons.arrow_back_outlined)),
                          SizedBox(width: 50,),
                          Text(
                            "Forget Password",
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text("Enter your email or your number to\nreset the password",textAlign: TextAlign.center,),
                      SizedBox(
                        height: 100,
                      ),
                      BaarahTextField(
                        hintText: "Email/ Number",
                      ),
                      SizedBox(
                        height: 140,
                      ),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return ScreenVerification();
                        }));
                        
                      }, child: Text("Submit"),
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
