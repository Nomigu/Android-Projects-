import 'package:baara_app/widgets/textField.dart';
import 'package:flutter/material.dart';
import '../layouts/layout_search.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String? dropdownValue = 'Level 01';
  String? dropdownValue1;
  String? dropdownValue2;
  String? myValue;
  List<String> myValues = ["1", "2", "3"];
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.9),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return SearchLayout();
            }));
          },
          icon: const Icon(
            Icons.close_rounded,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Filters",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: Text(
              "Clear",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "       Sort By",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: BaarahTextField(
                  hintText: "Online Sellers",
                  suffix: Switch(
                    value: switchValue,
                    onChanged: (bool value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "       Category",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: BaarahTextField(
                  hintText: "Relevance",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: BaarahTextField(
                  hintText: "Best Selling",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: BaarahTextField(
                  hintText: "New Arrivals",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "       Filters",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
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
                      "Price Range",
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
                                hintText: "\$10",
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          const Text("to"),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: "\$100",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff5B606D).withOpacity(0.2),
                    ),
                  ),
                  child: DropdownButton<String>(
                    hint: Text("Select Seller Level"),
                    value: dropdownValue,
                    isExpanded: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    underline: SizedBox(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['Level 01', 'Level 02', 'Level 03'].map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.red),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff5B606D).withOpacity(0.2),
                    ),
                  ),
                  child: DropdownButton<String>(
                    hint: const Text("Select Seller Language"),
                    value: dropdownValue2,
                    isExpanded: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    underline: const SizedBox(),
                    items: <String>['English', 'Arabic', 'Urdu']
                        .map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style:TextStyle(color: Colors.red),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                      });
                    },
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
                    border: Border.all(
                      color: Color(0xff5B606D).withOpacity(0.2),
                    ),
                  ),
                  child: DropdownButton<String>(
                    hint: Text("   Seller Location"),
                    value: dropdownValue1,
                    isExpanded: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    underline: SizedBox(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue1 = newValue;
                      });
                    },
                    items: <String>[" ",'USA', 'UK', 'Pakistan']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return SearchLayout();
                    }));
                  },
                  child: const Text("Apply"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    fixedSize: const Size(300, 50),
                    backgroundColor: const Color(0xffF13B2D),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
