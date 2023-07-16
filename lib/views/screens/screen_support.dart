import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
          "Support",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            InkWell(onTap: (){
            },
              child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff5B606D).withOpacity(0.2),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          "Help & Education",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      IconButton(
                          onPressed: () {
                          },
                          icon: Icon(Icons.navigate_next_outlined))
                    ],
                  )),
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Leave feedback",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 157,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.navigate_next_outlined))
                  ],
                )),
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Forum",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 212,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.navigate_next_outlined))
                  ],
                )),
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Blog",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 225,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.navigate_next_outlined))
                  ],
                )),

          ],
        ),
      ),
    );
  }
}
