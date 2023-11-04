import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop Market',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CropMarketPage(),
    );
  }
}

class CropMarketPage extends StatefulWidget {
  @override
  _CropMarketPageState createState() => _CropMarketPageState();
}

class _CropMarketPageState extends State<CropMarketPage> {
  // Dummy data for crops, you should replace this with actual data.
  List<Crop> crops = [
    Crop(name: 'Tomatoes', location: 'Local Market', price: 2.5, trend: 0.15),
    Crop(name: 'Apples', location: 'Local Market', price: 1.8, trend: -0.05),
    Crop(name: 'Bananas', location: 'Local Market', price: 1.2, trend: 0.12),
    Crop(name: 'Oranges', location: 'Local Market', price: 1.6, trend: 0.08),
  ];

  String? selectedLocation = 'Local Market';
  String? selectedCropType = 'All Crops';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity, // Make the header span the full width
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.green, Colors.teal],
                ),
              ),
              padding: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Crop Market',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Find the Best Crops in Your Area',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        DropdownButton<String>(
                          value: selectedLocation,
                          items: <String>['Local Market', 'Regional Market', 'National Market']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              setState(() {
                                selectedLocation = newValue;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Crop Type',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        DropdownButton<String>(
                          value: selectedCropType,
                          items: <String>['All Crops', 'Tomatoes', 'Apples', 'Bananas', 'Oranges']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              setState(() {
                                selectedCropType = newValue;
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: crops.length,
              itemBuilder: (context, index) {
                Crop crop = crops[index];
                if ((selectedLocation == 'All Markets' || crop.location == selectedLocation) &&
                    (selectedCropType == 'All Crops' || crop.name == selectedCropType)) {
                  return CropCard(crop: crop);
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: 'Crops',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}

class Crop {
  final String name;
  final String location;
  final double price;
  final double trend;

  Crop({required this.name, required this.location, required this.price, required this.trend});
}

class CropCard extends StatelessWidget {
  final Crop crop;

  CropCard({required this.crop});

  @override
  Widget build(BuildContext context) {
    Color trendColor = crop.trend > 0 ? Colors.green : Colors.red;
    String insight = crop.trend > 0 ? 'Positive Trend' : 'Negative Trend';

    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              crop.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Location: ${crop.location}', style: TextStyle(fontSize: 18)),
            Text('Price: \$${crop.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 18)),
            Row(
              children: [
                Text(
                  'Trend: ${crop.trend > 0 ? '+' : ''}${crop.trend.toStringAsFixed(2)}%',
                  style: TextStyle(
                    fontSize: 18,
                    color: trendColor,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'Insight: $insight',
                  style: TextStyle(
                    fontSize: 18,
                    color: trendColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
