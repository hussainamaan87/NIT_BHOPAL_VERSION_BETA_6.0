import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Wrap the content in a SingleChildScrollView
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0), // Add padding to the header section
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dhruv SABOO",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Phone: +1234567890",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 16.0), // Add margin to the CircleAvatar
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("URL_TO_PROFILE_IMAGE"),
                    ),
                  ),
                ],
              ),
            ),
            // Add "Current Crop: Wheat" above "Box 1"
            Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Current Crop: Wheat",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Modify Box 1 to have the photo on the left side and content on the right side
                  Container(
                    margin: EdgeInsets.only(top: 16.0), // Add margin to separate it from the text above
                    padding: EdgeInsets.all(16.0), // Add padding to the box
                    width: 350,
                    height: 200,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        // Add the picture of wheat on the left side
                        Expanded(
                          flex: 1, // Divide the space into two equal parts
                          child: Image.asset('path_to_wheat_image.png'),
                        ),
                        // Add the content on the right side
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Crop Growth Timeline",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Months Grown: 4"), // Modify with actual data
                              Text("Harvest in: 2 months"), // Modify with actual data
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Create a row for Box 2 and Box 3
            Row(
              children: [
                // Box 2
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(16.0),
                        height: 100,
                        color: Colors.green,
                        child: Center(
                          child: Image.asset('path_to_graph_image.png'), // Add the graph image for Box 2
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        color: Colors.white,
                        child: Text(
                          "Market Conditions",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Box 3
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(16.0),
                        height: 100,
                        color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Text(
                            //   "Box 3 - Pie Chart", // Add the heading for Box 3
                            //   style: TextStyle(
                            //     fontSize: 18,
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                            Image.asset('path_to_image_for_box3.png'), // Add the image for Box 3 (the pie chart)
                          ],
                        ),
                      ),
                      Text(
                        "Pie Chart", // Add the heading for the pie chart below Box 3
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Add a new column for Box 4
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(16.0),
                  width: 350,
                  height: 200,
                  color: Colors.orange, // Customize the color for Box 4
                  child: Center(
                    child: Text(
                      "Schemes of the Govt",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Current News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'News Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}