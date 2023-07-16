import 'package:baara_app/widgets/textField.dart';
import 'package:flutter/material.dart';

class PostRequestScreen extends StatefulWidget {
  const PostRequestScreen({super.key});

  @override
  State<PostRequestScreen> createState() => _PostRequestScreenState();
}

class _PostRequestScreenState extends State<PostRequestScreen> {
  String? dropdownValue1;
  String? dropdownValue2;
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
        toolbarHeight: 50,
        title: Text(
          "Post Request",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "How do requests work?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Post a request to our seller community. Sellers will\n "
                "send their offers and you can choose who you would\n "
                "like to work with. Once you decide, you can purchase\n "
                "their service.",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 270.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Got it",
                    )),
              ),
              Text("Add a description to your request"),
              Card(
                child: Container(
                  height: 100,
                  width: 327,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                                hintText: "Max 300 Characters.",
                                hintStyle: TextStyle(fontSize: 14)),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240.0),
                        child: Text(
                          "0/300",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Choose a Category"),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff5B606D).withOpacity(0.2),
                  ),
                ),
                child: DropdownButton<String>(
                  hint: Text("   Category",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                  value: dropdownValue1,
                  isExpanded: true,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  underline: SizedBox(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue;
                    });
                  },
                  items: <String>["Logo Design",'Content Writing', 'Animation', 'Video Editing']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff5B606D).withOpacity(0.2),
                  ),
                ),
                child: DropdownButton<String>(
                  hint: Text("   Sub-Category",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                  value: dropdownValue2,
                  isExpanded: true,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  underline: SizedBox(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue2 = newValue;
                    });
                  },
                  items: <String>["Minimalist Logo Designing",'Graphic Designing', '3D Logos', '2D Logos']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 10,),
              Text("When would you like your service delivered?"),
              SizedBox(height: 10,),
              BaarahTextField(hintText:"Delivery Time",),
              SizedBox(height: 10,),
              Text("Budget"),
              SizedBox(height: 10,),
              BaarahTextField(hintText:"Min\$10",),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                      return PostRequestScreen();
                    }));
                  },
                  child: Text("Submit Your Request"),
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
    );
  }
}
