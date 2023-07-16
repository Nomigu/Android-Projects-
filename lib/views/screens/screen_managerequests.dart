import 'package:baara_app/views/screens/screen_postrequest.dart';
import 'package:flutter/material.dart';

class MangeRequestsScreen extends StatefulWidget {
  const MangeRequestsScreen({super.key});

  @override
  State<MangeRequestsScreen> createState() => _MangeRequestsScreenState();
}

class _MangeRequestsScreenState extends State<MangeRequestsScreen> {
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
          "Manage Requests",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/document.png",),
              SizedBox(height:10,),
              Text(
                "No request found",
                style: TextStyle(
                    fontSize: 14,
                  fontWeight: FontWeight.w500
                ),textAlign: TextAlign.center,
              ),
              TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                  return PostRequestScreen();
                }));
              }, child: Text("Post a request")),
            ],
          ),
        ),
      ),
    );
  }
}
