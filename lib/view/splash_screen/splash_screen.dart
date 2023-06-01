import 'package:flutter/material.dart';

class RefineScreen extends StatefulWidget {
  RefineScreen({Key? key}) : super(key: key);

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  // Initial Selected Value
  String selectedValue = 'Available | Hey Let Us Connect';

  // List of items in our dropdown menu
  var items = [
    'Available | Hey Let Us Connect',
    'Away | Stay Discrete And Watch',
    'Busy | Don Not Disturb I Will Catch Up Later',
    'SOS | Emergency! Need Assistamce! HELP',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Refine"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Select Availability Section
            Text(
              "Select Your Availability",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blue[900],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),

              // Initial Value
              value: selectedValue,

              // Down Arrow Icon
              icon: const Icon(Icons.arrow_drop_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),

            // Select Status Section
            Text(
              "Add Your Status",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blue[900],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Select Hyper Local Distance
            Text(
              "Select Hyper Local Distance",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blue[900],
              ),
            ),
            SizedBox(
              height: 12,
            ),

            SizedBox(
              height: 20,
            ),

            // Select Purpose
            Text(
              "Select Purpose",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blue[900],
              ),
            ),
            SizedBox(
              height: 12,
            ),

            SizedBox(
              height: 20,
            ),


            // Save And Explore Button
            ElevatedButton(
                onPressed: null,
                child: Text(
                  "Save & Explore",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
