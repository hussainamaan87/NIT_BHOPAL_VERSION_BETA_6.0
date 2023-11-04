import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final phoneController = TextEditingController();

  String selectedCountryCode = 'IN'; // Default to India
  String phoneNumber = ''; // To store the phone number

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/farmer.png',
                width: 100.0, // Adjust the width as needed
                height: 100.0, // Adjust the height as needed
              ),
              Text(
                'Register',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Add your phone number, We'll send you a verification code",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: IntlPhoneField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: 'Enter phone number',
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    setState(() {
                      selectedCountryCode = phone.countryCode;
                      phoneNumber = phone.completeNumber;
                    });
                    print(phone.completeNumber);
                  },
                ),
              ),
              // Add any additional registration widgets or controls here
              ElevatedButton(
                onPressed: () {
                  // Use selectedCountryCode and phoneNumber as needed
                  print('Selected Country Code: $selectedCountryCode');
                  print('Phone Number: $phoneNumber');
                  // You can pass them to another screen or use them for verification, etc.
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
