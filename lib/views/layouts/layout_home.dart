import 'package:baara_app/models/services.dart';
import 'package:flutter/material.dart';
import '../../models/item_digital_servicese.dart';
import '../screens/screen_profile_notification.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  get services => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: 125,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff3368FF),
              child:Row(
                children: [
                  Image.asset(
                    'assets/images/logo 1.png',
                    height: 25,
                  ),
                  SizedBox(width: 160),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                          return ProfileNotification();
                        }));
                      },
                      icon: Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        showDialog<void>(
                          context: context,
                          builder: (BuildContext dialogContext) {
                            return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                title: Text(
                                  'Upload Profile Image',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                content: Container(
                                  height: 180,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                              "assets/images/gallery 1.png"),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Gallery",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                              height: 48,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xff000000)
                                                          .withOpacity(0.1)),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      10)),
                                              child: Image.asset(
                                                  "assets/images/photos 1.png")),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Photos",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 48,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.1)),
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: Image.asset(
                                                "assets/images/camera 1.png"),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Camera",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ));
                          },
                        );
                      },
                      icon: Icon(
                        Icons.person_pin,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Positioned(
              top: 100,
              left: 10,
              right: 10,
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffB5C2E6),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 0,
              right: 0,
              bottom: 0,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Services",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              "See All",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 160,
                        child: ListView.builder(
                          itemCount: myServices.length,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            var service = myServices[index];
                            return ItemDigitalServicese(services: service);
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        height: 180,
                        child: ListView.builder(
                          itemCount: myServices.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            var services = myServices[index];
                            return ItemDigitalServicese(services: services);
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 500,
                        height: 300,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            var anotherClass = myAnotherClass[index];
                            return Container(
                           width: 360,
                                child: ItemDigitalServicese(
                                  services:Services (
                                    imageUrl: anotherClass.imageUrl, text: '',
                                  ),
                                ),
                            );
                          },
                          itemCount: myAnotherClass.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
