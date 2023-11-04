import 'package:flutter/material.dart';
import 'package:kisaan_saathi/buttons/Button1.dart';
import 'RegistrationScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/farmer.png",height: 200,),
              // const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Technology in your hand',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 15,),
              Button1(
                text: 'Get Started',
                color: Colors.green,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegistrationScreen(),
                  ));
                },
              )

            ],
          ),
        ),
      ),
      
    );
  }
}
