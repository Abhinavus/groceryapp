
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:inexsoftproject/UI/homepage.dart';
import 'package:inexsoftproject/errordialog.dart';
import 'package:inexsoftproject/routes.dart';

import '../firebase_options.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key}); 
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _email;
  late final TextEditingController _password;
 
  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
   _email.dispose();
   _password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: 
      
      Form(key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Column(
                children: [
                  Text('Hello Again!',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                    fontSize: 50,
              ),),
      
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Text("Welcome Back,You've been missed!",
                    style: TextStyle(
                      fontSize: 20,
                ),),
              ),SizedBox(height: 20,),
      
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                  ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: TextFormField(
                          controller: _email,
                           validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
                          enableSuggestions: false,
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your email here'
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                  ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: TextFormField(
                          controller:_password ,
                           validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your password here '
                          ),
                        ),
                      ),
                    ),
                  ),SizedBox(height: 10,),
                  Container(
                    width: 340, height: 70,
              decoration: BoxDecoration(color: Color.fromARGB(255, 44, 69, 151),
              borderRadius: BorderRadius.circular(12)
              ),
                    child: TextButton(onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await Firebase.initializeApp(
                          options: DefaultFirebaseOptions.currentPlatform,
                        );
                        final email = _email.text;
                        final password = _password.text;
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(email: email, password: password);
                                   Navigator.of(context).pushNamedAndRemoveUntil(homeRoute, (route) => false);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            await showErrorDialog(context, 'Weak Password');
                          } else if (e.code == 'email-already-in-use') {
                            await showErrorDialog(
                                context, 'Email already in use');
                          } else if (e.code == 'invalid-email') {
                            await showErrorDialog(context, 'Invalid Email');
                          } else {
                            await showErrorDialog(context, 'Error: ${e.code}');
                          }
                        }
                      }
                    },
                    child: const Text('Login',
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
              ),
                    ),
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(registerRoute, (route) => false);
                  },
                   child: Text('Not registered yet'),)
                  
                ],
              ),
        ),
      ),
    );
            
          }
           }
            
