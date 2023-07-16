import 'package:baara_app/views/screens/screen_inboxconservation.dart';
import 'package:baara_app/widgets/custom%20checkbox.dart';
import 'package:flutter/material.dart';
import '../layouts/layout_inbox.dart';

class InboxFilter extends StatefulWidget {
  const InboxFilter({Key? key});

  @override
  State<InboxFilter> createState() => _InboxFilterState();
}

class _InboxFilterState extends State<InboxFilter> {
  bool isChecked = false;
  bool Checked =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.9),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return InboxLayout();
            }));
          },
          icon: Icon(
            Icons.close_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Filters Inbox",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            "     Inbox",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(height: 20),
          CustomCheckbox(
            prefix: Icon(Icons.all_inbox),
            prefixText: "All",
            isChecked:Checked, onChanged:  (value) {
            setState(() {
              Checked = value!;
            });
            if (value==true){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return ScreenInboxConservation();
              }));
            }
          },
          ),
          SizedBox(height: 10),
          CustomCheckbox(
            prefix:Icon(Icons.mark_email_unread_outlined),
            prefixText: "Unread",
            isChecked: isChecked, onChanged:  (value) {
            setState(() {
              isChecked = value!;
            });
          },
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff5B606D).withOpacity(0.2)),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Starred",
                  prefixIcon: Icon(Icons.star_outline),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff5B606D).withOpacity(0.2)),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Archived",
                  prefixIcon: Icon(Icons.archive_outlined),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff5B606D).withOpacity(0.2)),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Spam",
                  prefixIcon: Icon(Icons.block_rounded),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
