import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/login_view.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: height,
              child: Image.asset(
                "assests/tile/welcomeimage.jpg",
                fit: BoxFit.fill,
              ),
            ), 
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 500),
                child: Container(
                  width: 325,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20)),),
                  child: Center(
                    child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Welcome to Freshhomes,",
                                    style: GoogleFonts.notoSerif(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w300,
                                    ),textAlign: TextAlign.center,
                                  ),
                                    Text(
                                    "Where everything is fresh",
                                    style: GoogleFonts.notoSerif(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: 200,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 44, 69, 151),
                                borderRadius: BorderRadius.circular(12)),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginView(),
                                  ),
                                );
                              },
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
