import 'package:flutter/material.dart';
import 'graph.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // 1. Welcome Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Dhruv Saboo',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('URL_TO_USER_PHOTO'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // 2. Container with Icons and Text
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.arrow_back), // Replace with your icon
                            Text('Text1',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.arrow_back), // Replace with your icon
                            Text('Text2',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.arrow_back), // Replace with your icon
                            Text('Text3',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // 3. Crops Section
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      children: [
                        // Create a row for each crop
                        Row(
                          children: [
                            Expanded(
                              child: CropCard(
                                icon: Icons
                                    .arrow_back, // Replace with your crop icon
                                name: 'Wheat',
                                description: '2-3 lines about Wheat crop.',
                              ),
                            ),
                            Expanded(
                              child: CropCard(
                                icon: Icons
                                    .arrow_forward, // Replace with your crop icon
                                name: 'Rice',
                                description: '2-3 lines about Rice crop.',
                              ),
                            ),
                            Expanded(
                              child: CropCard(
                                icon: Icons
                                    .arrow_upward, // Replace with your crop icon
                                name: 'Corn',
                                description: '2-3 lines about Corn crop.',
                              ),
                            ),
                          ],
                        ),
                        // Add more rows for additional crops
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // 4. Search Bar for Marketplace
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // 5. Graph Section
                  SupplyDemandBarGraph(),

                  // 6. News Section
                  // Create a list of news items (name and title) and display them
                ],
              ),
            ),
          ),
          // 7. Fixed Footer with 5 Icons
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notifications',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.article),
                  label: 'News',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_active),
                  label: 'Alert',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chat',
                ),
                // Add more items for additional sections
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CropCard extends StatelessWidget {
  final IconData icon;
  final String name;
  final String description;

  const CropCard({
    required this.icon,
    required this.name,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Icon(icon),
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(description, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
