import 'package:baara_app/views/screens/screen_resetpassword.dart';
import 'package:baara_app/views/screens/screen_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenOTP extends StatefulWidget {
  const ScreenOTP({Key? key}) : super(key: key);

  @override
  _ScreenOTPState createState() => _ScreenOTPState();
}

class _ScreenOTPState extends State<ScreenOTP> {
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
                                  return ScreenVerification();
                                },
                              ));
                            },
                            icon: Icon(Icons.arrow_back_outlined)),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "OTP Verification",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "We’ve sent an OTP code to your email/mobile, please enter that code below to verify.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Form(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1)
                              ],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  fillColor:
                                      Color(0xff9FB8FF).withOpacity(0.4))),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1)
                              ],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  fillColor:
                                      Color(0xff9FB8FF).withOpacity(0.4))),
                          ),
                         SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1)
                              ],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  fillColor:
                                      Color(0xff9FB8FF).withOpacity(0.4))),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1)
                              ],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  fillColor:
                                      Color(0xff9FB8FF).withOpacity(0.4))),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Haven’t received code yet?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(onPressed: () {}, child: Text('Send again'))
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return ScreenResetPassword();
                          }));
                        },
                        child: Text("Verify"),
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
