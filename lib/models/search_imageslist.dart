import 'package:baara_app/models/services.dart';
import 'package:flutter/material.dart';

class SearchImagesList extends StatefulWidget {
  final SearchList searchList;

  SearchImagesList({
   required this.searchList
  });

  @override
  State<SearchImagesList> createState() => _SearchImagesListState();
}

class _SearchImagesListState extends State<SearchImagesList> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          ),
        child: Row(
          children: [
            Image(image: AssetImage(widget.searchList.imageUrl)),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom:10.0),
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
                      SizedBox(width: 80,),
                     IconButton(onPressed: (){
                       setState(() {
                         isFavorite = !isFavorite;
                       });
                     }, icon: Icon(Icons.favorite, color: isFavorite ? Colors.red : Colors.grey,)),
                    ],
                  ),
                ),
                SizedBox(height:0,),
                Padding(
                  padding: const EdgeInsets.only(bottom:20.0),
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      Text(
                        "edit your videos professionally",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0,bottom: 10),
                  child: Row(
                    children: [
                      Text("\$200.00"),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}