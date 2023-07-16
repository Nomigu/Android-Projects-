import 'package:baara_app/models/services.dart';
import 'package:baara_app/models/search_imageslist.dart';
import 'package:flutter/material.dart';

import '../screens/screen_searchfilter.dart';
import '../screens/screen_payment.dart';

class SearchLayout extends StatefulWidget {
  @override
  State<SearchLayout> createState() => _SearchLayoutState();
}

class _SearchLayoutState extends State<SearchLayout> {
  int selectedChipIndex = -1;
  int selectedChip = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 80,
          title: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(),
              ),
              hintText: "Search services....",
              hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Image.asset(
                  "assets/images/search.png",
                  color: Colors.grey,
                ),
              ),
              suffixIconConstraints:
                  BoxConstraints(maxHeight: 40, maxWidth: 40),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xff5B606D).withOpacity(0.2),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xff5B606D).withOpacity(0.2),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white.withOpacity(0.2),
          leading: SizedBox(),
          leadingWidth: 0,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return FilterScreen();
                }));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Card(
                    child: Container(
                      height:45,
                      width: 50,
                      child: Icon(
                        Icons.sync_alt_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ChoiceChip(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.black,
                        selectedColor: Colors.blue.withOpacity(0.2),
                        elevation: 0.2,
                        label: Text(
                          "youtube video editing",
                          style: TextStyle(
                            fontSize: 12,
                            color: selectedChipIndex == 0
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                        selected: selectedChipIndex == 0,
                        onSelected: (value) {
                          setState(() {
                            selectedChipIndex = 0;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ChoiceChip(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.black,
                        selectedColor: Colors.blue.withOpacity(0.2),
                        elevation: 0.2,
                        label: Text(
                          "vlog video editing",
                          style: TextStyle(
                            fontSize: 12,
                            color: selectedChipIndex == 1
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                        selected: selectedChipIndex == 1,
                        onSelected: (value) {
                          setState(() {
                            selectedChipIndex = 1;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ChoiceChip(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.black,
                        selectedColor: Colors.blue.withOpacity(0.2),
                        elevation: 0.2,
                        label: Text(
                          "gaming video editing",
                          style: TextStyle(
                            fontSize: 12,
                            color: selectedChipIndex == 2
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                        selected: selectedChipIndex == 2,
                        onSelected: (value) {
                          setState(() {
                            selectedChipIndex = 2;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "  Shop by",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ChoiceChip(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.black,
                      selectedColor: Colors.blue.withOpacity(0.2),
                      elevation: 0.2,
                      label: Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 12,
                          color: selectedChip == 0 ? Colors.blue : Colors.grey,
                        ),
                      ),
                      selected: selectedChip == 0,
                      onSelected: (value) {
                        setState(() {
                          selectedChip = 0;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ChoiceChip(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.black,
                      selectedColor: Colors.blue.withOpacity(0.2),
                      elevation: 0.2,
                      label: Text(
                        "Level 01 Provider",
                        style: TextStyle(
                          fontSize: 12,
                          color: selectedChip == 1 ? Colors.blue : Colors.grey,
                        ),
                      ),
                      selected: selectedChip == 1,
                      onSelected: (value) {
                        setState(() {
                          selectedChip = 1;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ChoiceChip(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.black,
                      selectedColor: Colors.blue.withOpacity(0.2),
                      elevation: 0.2,
                      label: Text(
                        "Level 02 Provider",
                        style: TextStyle(
                          fontSize: 12,
                          color: selectedChip == 2 ? Colors.blue : Colors.grey,
                        ),
                      ),
                      selected: selectedChip == 2,
                      onSelected: (value) {
                        setState(() {
                          selectedChip = 2;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      shadowColor: Colors.white.withOpacity(0.02),
                      elevation: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 70,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "36k Services",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Video Editing",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shadowColor: Colors.black.withOpacity(0.02),
                      elevation: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 70,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "2.7k Services",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Short Video Ads",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shadowColor: Colors.black.withOpacity(0.02),
                      elevation: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 70,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "312 Services",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Promotion Ads",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var searchList = mySearchList[index];
                  return InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return ScreenPayments();
                    }));},
                    child: SearchImagesList(
                      searchList: SearchList(
                        imageUrl: searchList.imageUrl,
                        text: searchList.text,
                      ),
                    ),
                  );
                },
                itemCount: mySearchList.length,
                scrollDirection: Axis.vertical,
              )
            ],
          ),
        ),
      ),
    );
  }
}
