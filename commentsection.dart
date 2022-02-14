import 'dart:ui';
import 'package:TheLook/Modules/constants.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


// Create a Form widget.
class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<Comments> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      backgroundColor: mycolor,
      appBar: AppBar(
        backgroundColor: mycolor,
        title: const Text(
          'Share your Experince ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: CachedNetworkImage(
                imageUrl:
                    'https://images.unsplash.com/photo-1599351431202-1e0f0137899a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                autocorrect: true,
                decoration: const InputDecoration(
                  fillColor: Colors.white54,
                  filled: true,
                  // border: OutlineInputBorder(),
                  hintText: '              Tell Us About your Experince',
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter comment';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: const ButtonStyle(),
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('THANK YOU FOR YOUR FEEDBACK')),
                      );
                      //Navigator.pop(context);
                    }
                  },
                  child: const Text('Forward'),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
