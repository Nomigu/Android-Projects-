import 'package:flutter/material.dart';

class ScreenOrderSeller extends StatefulWidget {
  const ScreenOrderSeller({Key? key});

  @override
  State<ScreenOrderSeller> createState() => _ScreenOrderSellerState();
}

class _ScreenOrderSellerState extends State<ScreenOrderSeller> {
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
            "Orders with Sophia_jane",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "   Previous Orders",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height:10,
            ),
            ListView.builder(itemBuilder:(context, index)
            {
              return  Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 12,),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/rating.png",
                            width: 90,
                            height: 75,
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Image.asset(
                              "assets/images/inbox.png",
                              width: 26,
                              height: 26,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Sophia_jane',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 100),
                                  Text(
                                    '\$600',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(
                                "edit your videos professionally",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Divider(
                            height: 1,
                            thickness: 1,
                            color: Color(0xff000000).withOpacity(0.1)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jan 16, 2022",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "In Progress",
                                style: TextStyle(color: Colors.orange),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xffFF8D3B).withOpacity(
                                      0.2), // 33 represents 20% opacity
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              );

            },
              shrinkWrap: true,
              itemCount: 3,

            ),

          ],
        ),
    );
  }
}
