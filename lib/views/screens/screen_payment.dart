import 'package:baara_app/views/screens/screen_servicesoption.dart';
import 'package:baara_app/widgets/custom%20checkbox.dart';
import 'package:baara_app/widgets/textField.dart';
import 'package:flutter/material.dart';

class ScreenPayments extends StatefulWidget {
  const ScreenPayments({Key? key});

  @override
  State<ScreenPayments> createState() => _ScreenPaymentsState();
}

class _ScreenPaymentsState extends State<ScreenPayments> {
  String? dropdownValue;
  bool isChecked = false;
  bool isChecked1=false;
  bool Checked = false;
  bool Checked1=false;
  bool Checked2=false;
  bool Checked3=false;
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
          "Payments",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reservation & payment",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(onPressed: () {}, child: Text("Change"))
                ],
              ),
              Card(
                elevation: 0,
                child: Container(
                  decoration: BoxDecoration(),
                  child: Row(
                    children: [
                      Image.asset("assets/images/unsplash_FhZEpxtTI_Y.png",height:120,width:110,),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffFBB957),
                                  size: 24,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xffFBB957),
                                  ),
                                ),
                                Text(
                                  '(538)',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              children: [
                                SizedBox(width: 5),
                                Text(
                                  "edit your videos professionally",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 140.0, bottom: 10),
                            child: Row(
                              children: [
                                Text("\$200.00"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Describe your work",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Container(
                  height: 125,
                  width: 327,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "e.g. your work details, your timeline, work references (if any) and more...",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240.0),
                        child: Text(
                          "0/1200",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Time & Address",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
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
                  hint: Text(
                    "Date & Time of Appointment",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  value: dropdownValue,
                  isExpanded: true,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  underline: SizedBox(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    '10 july 2023 11:25am',
                    '11 july 2023 11:25am',
                    '9 july 2023 11:25am'
                  ].map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              BaarahTextField(
                hintText: "Meeting Address",
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
              Text(
                "Payment Methods",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
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
                child: ListTile(
                  title: Text(
                    " Total Price",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 14),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "\$500",
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomCheckbox(
                  prefix: Text(
                    "Visa",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  text: "Credit Card",
                  isChecked: Checked,
                  onChanged: (value) {
                    setState(() {
                      Checked = value!;
                    });
                  }),
              SizedBox(
                height: 10,
              ),
              CustomCheckbox(
                  prefix: Image.asset("assets/images/paypal.png"),
                  text: "Paypal Single Click",
                  isChecked: Checked1,
                  onChanged: (value) {
                    setState(() {
                      Checked1 = value!;
                    });
                  }),
              SizedBox(
                height: 10,
              ),
              CustomCheckbox(
                  prefix: Image.asset("assets/images/mobicash.png"),
                  text: "Cash Payment",
                  isChecked: Checked2,
                  onChanged: (value) {
                    setState(() {
                      Checked2 = value!;
                    });
                  }),
              SizedBox(
                height: 10,
              ),
              CustomCheckbox(
                  prefix: Image.asset("assets/images/orangemoney.png"),
                  text: "Orange Money",
                  isChecked: Checked3,
                  onChanged: (value) {
                    setState(() {
                      Checked3= value!;
                    });
                  }),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 7,),
                  Checkbox(
                      value: isChecked1,
                      onChanged: (onTapValue) {
                        setState(() {
                          isChecked1 = onTapValue!;
                        });
                      }),
                  Text(
                    "By joining I agree to receive emails from Baara+",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScreenServicesOptions()));
                },
                child: Text("Send Custom offer"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  fixedSize: Size(320, 50),
                  backgroundColor: Color(0xffF13B2D),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
