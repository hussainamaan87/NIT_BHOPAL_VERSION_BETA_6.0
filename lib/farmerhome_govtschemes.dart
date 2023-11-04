import 'package:flutter/material.dart';
import 'package:my_app/schemeDescription.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FarmerHomePage(),
    );
  }
}

class SchemeDescriptionArguments {
  final String schemeName;
  final String schemeDescription;
  final String eligibility;
  final String applicationProcedure;
  final String rulesAndRegulations;

  SchemeDescriptionArguments({
    required this.schemeName,
    required this.schemeDescription,
    required this.eligibility,
    required this.applicationProcedure,
    required this.rulesAndRegulations,
  });
}

class FarmerHomePage extends StatelessWidget {
  final List<GovernmentScheme> schemes = [
    GovernmentScheme(
      name: 'PM-KISAN',
      description: 'Pradhan Mantri Kisan Samman Nidhi Yojana',
      imageUrl: '',
    ),
    GovernmentScheme(
      name: 'Scheme 2',
      description: 'Description for Scheme 2',
      imageUrl: '',
    ),
    GovernmentScheme(
      name: 'Scheme 3',
      description: 'Description for Scheme 3',
      imageUrl: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmer Schemes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FarmerHeader(),
            NotificationSection(),
            for (var scheme in schemes)
              FarmerSchemeCard(scheme: scheme),
          ],
        ),
      ),
    );
  }
}

class FarmerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('https://dbtbharat.gov.in/images/slider/header/00/DBT_Banner_2_AKAM.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class NotificationSection extends StatelessWidget {
  final List<String> notifications = [
    'Important Notification 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'Important Notification 2: Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'Important Notification 3: Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.',
    // Add more notifications as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.yellow, // You can customize the background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Important Notifications:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.black, // Customize the color of the divider line
            thickness: 2, // Adjust the thickness of the divider
          ),
          SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  notifications[index],
                  style: TextStyle(fontSize: 16),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class FarmerSchemeCard extends StatelessWidget {
  final GovernmentScheme scheme;

  FarmerSchemeCard({required this.scheme});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the scheme description page with scheme details
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SchemeDescriptionPage(
              schemeName: scheme.name,
              schemeDescription: scheme.description,
              eligibility: 'Eligibility for ${scheme.name}',
              applicationProcedure: 'Application Procedure for ${scheme.name}',
              rulesAndRegulations: 'Rules and Regulations for ${scheme.name}',
            ),
          ),
        );
      },
      child: Card(
        child: ListTile(
          title: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.35, // 35% of screen width
                child: Image.asset(scheme.imageUrl, width: 80, height: 80),
              ),
              SizedBox(width: 16), // Add space between image and text
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        scheme.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(scheme.description),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GovernmentScheme {
  final String name;
  final String description;
  final String imageUrl;

  GovernmentScheme({required this.name, required this.description, required this.imageUrl});
}
