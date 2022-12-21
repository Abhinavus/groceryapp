import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inexsoftproject/UI/fruitpage.dart';
import 'package:inexsoftproject/UI/mainscreen.dart';
import 'package:inexsoftproject/routes.dart';
import 'package:inexsoftproject/views/login_view.dart';
import 'package:inexsoftproject/views/register_view.dart';
import 'package:provider/provider.dart';


import 'UI/homepage.dart';
import 'UI/vegetablepage.dart';
import 'UI/welcome.dart';
import 'models/cartmodel.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Welcome(),
        routes: {
          loginRoute :(context) => const LoginView(),
          registerRoute:(context) => const RegisterView(),
          homeRoute:(context) =>  MainScreen(),


        },
        
      ),
    );
  }
}