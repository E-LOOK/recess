import 'dart:ui';

import 'package:TheLook/Modules/constants.dart';
import 'package:TheLook/Sign_in/utils/authentication_client.dart';
import 'package:TheLook/Sign_in/utils/validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _nameFocusNode = FocusNode();

  final _emailFocusNode = FocusNode();

  final _passwordFocusNode = FocusNode();

  final _authClient = AuthenticationClient();

  bool _isProgress = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _nameFocusNode.unfocus();
        _emailFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        //backgroundColor: mycolor,
        appBar: AppBar(
          backgroundColor: mycolor,
          title: const Text('Register'),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _nameController,
                    focusNode: _nameFocusNode,
                    validator: Validator.name,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'Enter your name',
                      hintStyle: const TextStyle(color: Colors.white),
                      label: const Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _emailController,
                    focusNode: _emailFocusNode,
                    validator: Validator.email,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      fillColor: Colors.white,
                      border: const OutlineInputBorder(),
                      hintText: 'Enter your email',
                      hintStyle: const TextStyle(color: Colors.white),
                      label: const Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    validator: Validator.password,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'Enter your password',
                      hintStyle: const TextStyle(color: Colors.white),
                      label: const Text(
                        'Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  _isProgress
                      ? const CircularProgressIndicator()
                      : SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.greenAccent,
                                //fixedSize: const Size(50, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  _isProgress = true;
                                });
                                final User? user =
                                    await _authClient.registerUser(
                                  name: _nameController.text,
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                );
                                setState(() {
                                  _isProgress = false;
                                });

                                if (user != null) {
                                  Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ),
                                    (route) => false,
                                  );
                                }
                              }
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(fontSize: 22.0),
                              ),
                            ),
                          ),
                        )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
