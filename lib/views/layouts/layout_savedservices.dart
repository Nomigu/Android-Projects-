import 'package:flutter/material.dart';

import '../screens/screen_managerequests.dart';

class SavedServicesLayout extends StatefulWidget {
  const SavedServicesLayout({super.key});

  @override
  State<SavedServicesLayout> createState() => _SavedServicesLayoutState();
}

class _SavedServicesLayoutState extends State<SavedServicesLayout> {
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
          "Saved",
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
              Text(
                "See something you like? Save it!",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height:10,),
              Text(
                "Lists make it easier to compare services so that you can find just the right one for you.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey
                ),textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                  return MangeRequestsScreen();
                }));
              }, child: Text("Start Shopping")),
            ],
          ),
        ),
      ),
    );
  }
}
