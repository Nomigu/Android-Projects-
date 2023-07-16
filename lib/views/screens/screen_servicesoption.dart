
import 'package:baara_app/views/screens/screen_createoffer.dart';
import 'package:baara_app/widgets/custom%20checkbox.dart';
import 'package:flutter/material.dart';

class ScreenServicesOptions extends StatefulWidget {
  const ScreenServicesOptions({super.key});

  @override
  State<ScreenServicesOptions> createState() => _ScreenServicesOptionsState();
}

class _ScreenServicesOptionsState extends State<ScreenServicesOptions> {
  bool isChecked=false;
  bool isChecked1=false;
  bool isChecked2=false;
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
          "Service Options",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: [
          TextButton(onPressed: (){}, child: Text('Clear'))
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          CustomCheckbox(isChecked: isChecked, onChanged:(value){
            setState(() {
              isChecked=value!;
            });
          },
          text: "Source File"),
          SizedBox(height: 15,),
          CustomCheckbox(isChecked: isChecked1, onChanged:(value){
            setState(() {
              isChecked1=value!;
            });
          },
            text: "Animation",),
          SizedBox(height: 15,),
          CustomCheckbox(isChecked: isChecked2, onChanged:(value){
            setState(() {
              isChecked2=value!;
            });
          },
            text: "Customization",),
          SizedBox(height:360,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScreenCreateOffer()));
            },
            child: Text("Save"),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              fixedSize: Size(320, 50),
              backgroundColor: Color(0xffF13B2D),
            ),
          ),
        ],
      ),
    );
  }
}
