import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class CropInfo {
  final String name;
  final String description;
  final double price;

  CropInfo({
    required this.name,
    required this.description,
    required this.price,
  });
}

void addCropInfo(CropInfo cropInfo) {
  FirebaseFirestore.instance.collection('crop_info').add({
    'name': cropInfo.name,
    'description': cropInfo.description,
    'price': cropInfo.price,
  }).then((value) {
    print('Crop info added to Firestore');
  }).catchError((error) {
    print('Error adding crop info: $error');
  });
}

class CropInfoForm extends StatefulWidget {
  @override
  _CropInfoFormState createState() => _CropInfoFormState();
}

class _CropInfoFormState extends State<CropInfoForm> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();

  void _submitForm() {
    final cropInfo = CropInfo(
      name: nameController.text,
      description: descriptionController.text,
      price: double.tryParse(priceController.text) ?? 0.0,
    );

    // Send data to Firestore
    addCropInfo(cropInfo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Info Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(labelText: 'Price'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CropInfoForm(),
    );
  }
}
