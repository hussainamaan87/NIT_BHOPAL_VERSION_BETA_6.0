import 'package:farmer_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final postController1 = TextEditingController();
  final postController2 = TextEditingController();
  bool loading = false;
  final databaseRef = FirebaseDatabase.instance.ref().child('Policies');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextFormField(
              maxLines: 3,
              controller: postController1,
              decoration: InputDecoration(
                hintText: 'Policy name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              maxLines: 3,
              controller: postController2,
              decoration: InputDecoration(
                hintText: 'Policy Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            TextButton(
              child: Text('ADD'),
              onPressed: () {
                setState(() {
                  loading = true;
                });

                databaseRef.child(DateTime.now().millisecondsSinceEpoch.toString()).set({
                  'id': DateTime.now().millisecondsSinceEpoch.toString(),
                  'title': postController1.text.toString(),
                  'description': postController2.text.toString(),
                }).then((_) {
                  Utils().toastMessage('Info Added');
                  setState(() {
                    loading = false;
                  });
                }).catchError((error) {
                  Utils().toastMessage(error.toString());
                  setState(() {
                    loading = false;
                  });
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
