import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FarmInputForm(),
    );
  }
}

class FarmInputForm extends StatefulWidget {
  @override
  _FarmInputFormState createState() => _FarmInputFormState();
}

class _FarmInputFormState extends State<FarmInputForm> {
  final TextEditingController cropNameController = TextEditingController();
  final TextEditingController landAreaController = TextEditingController();
  final TextEditingController financialConditionsController =
      TextEditingController();
  final TextEditingController environmentalConditionsController =
      TextEditingController();
  final TextEditingController marketInformationController =
      TextEditingController();
  final TextEditingController contactInformationController =
      TextEditingController();
  final TextEditingController governmentSupportController =
      TextEditingController();

  void submitForm() {
    String cropName = cropNameController.text;
    double landArea = double.tryParse(landAreaController.text) ?? 0.0;
    String financialConditions = financialConditionsController.text;
    String environmentalConditions = environmentalConditionsController.text;
    String marketInformation = marketInformationController.text;
    String contactInformation = contactInformationController.text;
    String governmentSupport = governmentSupportController.text;

    // Create a map to represent the form data
    Map<String, dynamic> formData = {
      'cropName': cropName,
      'landArea': landArea,
      'financialConditions': financialConditions,
      'environmentalConditions': environmentalConditions,
      'marketInformation': marketInformation,
      'contactInformation': contactInformation,
      'governmentSupport': governmentSupport,
    };

    // Convert the map to a JSON string
    String formDataJson = jsonEncode(formData);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Farm Input Data'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Form Data (JSON): $formDataJson'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farm Input Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: cropNameController,
                decoration: InputDecoration(labelText: 'Crop Name'),
              ),
              TextField(
                controller: landAreaController,
                decoration: InputDecoration(labelText: 'Land Area (acres)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: financialConditionsController,
                decoration: InputDecoration(labelText: 'Financial Conditions'),
              ),
              TextField(
                controller: environmentalConditionsController,
                decoration:
                    InputDecoration(labelText: 'Environmental Conditions'),
              ),
              TextField(
                controller: marketInformationController,
                decoration: InputDecoration(labelText: 'Market Information'),
              ),
              TextField(
                controller: contactInformationController,
                decoration: InputDecoration(labelText: 'Contact Information'),
              ),
              TextField(
                controller: governmentSupportController,
                decoration: InputDecoration(labelText: 'Government Support'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
