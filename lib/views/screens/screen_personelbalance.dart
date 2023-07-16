import 'package:baara_app/widgets/custom%20checkbox.dart';
import 'package:flutter/material.dart';

class PersonalBalanceScreen extends StatefulWidget {
  const PersonalBalanceScreen({super.key});

  @override
  State<PersonalBalanceScreen> createState() => _PersonalBalanceScreenState();
}

class _PersonalBalanceScreenState extends State<PersonalBalanceScreen> {
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
          "Personal balance",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("FIVERR BALANCE"),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 120,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff5B606D).withOpacity(0.2)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Your Balance",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 154,
                          ),
                          Text(
                            "\$1208",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Your Reimbursements",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Text(
                            "\$0",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Color(0xff000000).withOpacity(0.1),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 205,
                          ),
                          Text(
                            "\$1208",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 130,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff5B606D).withOpacity(0.2)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "No Baara+ Credits",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Share Baara+ with a friend and get credits to buy the freelance services you need.",
                        style: TextStyle(
                            fontSize: 13,color: Colors.grey),
                      ),
                      TextButton(onPressed: (){}, child:Text("Refer a freind"))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
