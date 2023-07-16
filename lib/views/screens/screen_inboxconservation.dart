import 'package:flutter/material.dart';

import 'screen_createoffer.dart';
import 'screen_orderseller.dart';

class ScreenInboxConservation extends StatefulWidget {
  const ScreenInboxConservation({Key? key});

  @override
  State<ScreenInboxConservation> createState() =>
      _ScreenInboxConservationState();
}

class _ScreenInboxConservationState extends State<ScreenInboxConservation> {
  List<String> quickResponses = [
    "Sure, let’s get started",
    "Interesting, but I need more info",
    "Send me your portfolio please!"
  ];

  void removeQuickResponse(int index) {
    if (index >= 0 && index < quickResponses.length) {
      setState(() {
        quickResponses.removeAt(index);
      });
    }
  }

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
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/inbox.png"),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sophia_jane",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  " last seen 3 hrs ago",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                  return ScreenOrderSeller();
                }));
              },
              icon: Icon(
                Icons.list_alt_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      child: Container(
                        height: 370,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "More Options",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Mark s Unread",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Star",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Archive",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    showDialog<void>(
                                      context: context,
                                      builder: (BuildContext dialogContext) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17.0),
                                          ),
                                          content: Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Icon(
                                                  Icons.block_rounded,
                                                  size: 40,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Confirmation',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Are you sure, you want to block this seller?",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return ScreenInboxConservation();
                                                            },
                                                          ));
                                                        },
                                                        child: Text("Yes"),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          fixedSize:
                                                              Size(122, 48),
                                                          backgroundColor:
                                                              Color(0xff0E1528),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Expanded(
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return ScreenInboxConservation();
                                                            },
                                                          ));
                                                        },
                                                        child: Text("No"),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          fixedSize:
                                                              Size(122, 48),
                                                          backgroundColor:
                                                              Color(0xffF13B2D),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Text(
                                    "Block Seller",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Delete Chat",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Cancel"),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  fixedSize: Size(300, 50),
                                  backgroundColor: Color(0xffF13B2D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Jan 22, 2022",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset("assets/images/inboxconservation.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "John Doe",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "10:32 AM",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Text(
              "  Hey Sophia Jane,\n"
              " I hope you are doing well, actually I am\n"
              " looking for a video editor for my wedding\n"
              " vlogs. So I just got through your profile and\n"
              " I think you are good for my work\n"
              " Are you available?",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                SizedBox(
                  width: 60,
                ),
                Text(
                  "Sophia_jane",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "10:32 AM",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 80,
                ),
                Image.asset("assets/images/inbox.png"),
              ],
            ),
            Text(
              "Hey!\n"
              "Yeah sure I would like to work on your\n "
              "project. please send details,\n "
              "Thank you, looking forward...",
              style: TextStyle(color: Colors.black54),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Image.asset("assets/images/inboxconservation.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "John Doe",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "10:32 AM",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Text(
              "Yeah Sure, please find the attached\n documents along with link....",
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              " https://www.linkedin.com/johndoe34",
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/wedding.png"),
                SizedBox(
                  width: 15,
                ),
                Image.asset("assets/images/wedding.png"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Text(
                "Download All",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Container(
                padding: EdgeInsets.only(right: 120),
                width: 202,
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.blue,
                )),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Sophia_jane",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "10:32 AM",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 80,
                ),
                Image.asset("assets/images/inbox.png"),
              ],
            ),
            Center(
                child: Text(
              "Okay thank you, Let me check and I’ll\n get back to you.",
              style: TextStyle(color: Colors.black54),
            )),
            Card(
              child: Container(
                  height: 100,
                  width: 350,
                  child: Column(children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                  builder: (BuildContext context,
                                      void Function(void Function()) setState) {
                                    return Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20),
                                        ),
                                      ),
                                      child: Container(
                                        height: 290,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 20),
                                              Text(
                                                "Quick Response",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Container(
                                                height: 180,
                                                child: Builder(
                                                  builder:
                                                      (BuildContext context) {
                                                    return ListView.builder(
                                                      itemCount:
                                                          quickResponses.length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return ListTile(
                                                          title: Text(
                                                            quickResponses[
                                                                index],
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black54,
                                                                fontSize: 15),
                                                          ),
                                                          trailing: IconButton(
                                                            icon: Icon(Icons
                                                                .close_rounded),
                                                            onPressed: () {
                                                              setState(() {
                                                                removeQuickResponse(
                                                                    index);
                                                                print(
                                                                    "Removed");
                                                              });
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Text("Cancel"),
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  fixedSize: Size(300, 50),
                                                  backgroundColor:
                                                      Color(0xffF13B2D),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.flash_on),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0.0),
                          child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20),
                                        ),
                                      ),
                                      child: Container(
                                        height: 250,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 20),
                                              Text(
                                                "Select Attachment Option",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Insert Images",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  )),
                                              TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Choose File",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  )),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Text("Cancel"),
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  fixedSize: Size(300, 50),
                                                  backgroundColor:
                                                      Color(0xffF13B2D),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: Icon(Icons.attachment_outlined)),
                        ),
                        SizedBox(width: 40),
                        TextButton(
                            onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                            return ScreenCreateOffer();
                          }));
                            },
                            child: Text(
                              "Create an offer",
                              style: TextStyle(color: Colors.black),
                            )),
                        SizedBox(width:45),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.send_outlined)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 350,
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: "Type a message...",
                        ),
                      ),
                    )
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
