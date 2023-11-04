class CropDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Left side - Back Icon with increased font size
                  Container(
                    margin: EdgeInsets.only(left: 16.0, top: 20.0, right: 20.0),
                    padding: EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 50.0,
                      ),
                      onPressed: () {
                        // Handle back button press here
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  // Right side - Profile Container
                  Container(
                    margin: EdgeInsets.only(right: 16.0, top: 10.0),
                    padding: EdgeInsets.only(right: 30.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.help,
                        color: Colors.black,
                        size: 50.0,
                      ),
                      onPressed: () {
                        // Handle the question mark icon press here
                      },
                    ),
                  ),
                ],
              ),
              // Container on the left side and text on the right side
              Row(
                children: [
                  // Left side - Container
                  Container(
                    width: 140,
                    height: 140,
                    margin: EdgeInsets.only(top: 40.0, left: 20.0),
                    color: Colors.green,
                  ),
                  // Right side - Text with left margin
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 36.0, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Crop Name with padding
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Crop is Wheat",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Price with padding
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Price is 35/kg",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Ravi / Kharif crop",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20, // Add the desired height for spacing
              ),
              // Divider line
              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              // Description Heading
              Padding(
                padding: EdgeInsets.all(20.0), // Add padding to the heading
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              // Dummy text with reduced padding
              Padding(
                padding: EdgeInsets.all(10.0), // Add reduced padding to the text
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar dictum turpis, quis euismod erat. Nam porta ante ut leo bibendum, a consectetur purus ullamcorper. Fusce at risus mi.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              // Add space below the last Divider
              Container(
                height: 20,
              ),
              // Divider line
              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              // Feature of wheat text
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Feature of Wheat",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              // First Row with space between the containers
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Center the containers
                  children: [
                    // First Property
                    Container(
                      child: Column(
                        children: [
                          // Inner Container with icon
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.water_drop,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          // Property text
                          Text("Property 1"),
                          // Text value
                          Text("23 kg/gm"),
                        ],
                      ),
                    ),
                    // Second Property
                    Container(
                      child: Column(
                        children: [
                          // Inner Container with icon
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.water_drop,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          // Property text
                          Text("Property 2"),
                          // Text value
                          Text("23 kg/gm"),
                        ],
                      ),
                    ),
                    // Third Property
                    Container(
                      child: Column(
                        children: [
                          // Inner Container with icon
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.water_drop,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          // Property text
                          Text("Property 3"),
                          // Text value
                          Text("23 kg/gm"),
                        ],
                      ),
                    ),
                    // Fourth Property
                    Container(
                      child: Column(
                        children: [
                          // Inner Container with icon
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.water_drop,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          // Property text
                          Text("Property 4"),
                          // Text value
                          Text("23 kg/gm"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Second Row with space between the containers
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Center the containers
                  children: [
                    // Fifth Property
                    Container(
                      child: Column(
                        children: [
                          // Inner Container with icon
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.water_drop,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          // Property text
                          Text("Property 5"),
                          // Text value
                          Text("23 kg/gm"),
                        ],
                      ),
                    ),
                    // Sixth Property
                    Container(
                      child: Column(
                        children: [
                          // Inner Container with icon
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.water_drop,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          // Property text
                          Text("Property 6"),
                          // Text value
                          Text("23 kg/gm"),
                        ],
                      ),
                    ),
                    // Seventh Property
                    Container(
                      child: Column(
                        children: [
                          // Inner Container with icon
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.water_drop,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          // Property text
                          Text("Property 7"),
                          // Text value
                          Text("23 kg/gm"),
                        ],
                      ),
                    ),
                    // Eighth Property
                    Container(
                      child: Column(
                        children: [
                          // Inner Container with icon
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.water_drop,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          // Property text
                          Text("Property 8"),
                          // Text value
                          Text("23 kg/gm"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              // Divider line
              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Feature of Wheat",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              // Container to replace the graph
              Container(
                width: double.infinity, // Make the container take the full width
                height: 200, // Set the desired height
                color: Colors.blue, // Replace this with your desired container styling
                alignment: Alignment.center,
                child: Text(
                  "Your Container Content", // Replace with your content
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              // Spacer(),
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.grey,
                currentIndex: 0, // Set the initial selected index
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
                onTap: (index) {
                  // Handle navigation to different screens based on the selected index.
                  // You can implement the navigation logic here.
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
