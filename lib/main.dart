import 'package:flutter/material.dart';
import 'package:portfolio_pro/config/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                // ------------------------   Top part  ----------------
                Stack(
                  children: [
                    // ----------------------top container ----------------------
                    Container(
                    width: double.infinity,
                    height: 320,
                    color: headingColor
                  ),
                    // --------------------------------image Container----------------------
                    Positioned(
                      top: 80,
                        right: 20,
                        child: Container(
                          width: 120,
                          height: 120,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: imgCircle,
                          ),
                          // -------------------------making image circular-----------------
                          child: ClipOval(
                              child: Image.asset('assets/image/profile.jpg',
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                              ),
                          ),
                        )
                    ),
                    // -----------------------About Me-----------------------
                    const Positioned(
                      top: 70,
                        left: 20,
                        child: Text("About Me", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),

                    Positioned(
                      top: 115,
                        child: Container(
                          width: 200,
                          height:200,
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                          child: const Text("I am currently enrolled as a diligent student at Daffodil International University, where my academic focus lies within the domain of Computer Science and Engineering (CSE). Motivated by an enduring passion for learning, I consistently strive to broaden my intellectual horizons by exploring and assimilating new concepts and skills.", style: TextStyle(
                            color: secondaryText,
                          ),
                          ),
                        )
                    ),
                  //   -------------------------------name---------
                    const Positioned(
                      bottom: 0,
                        right: 6,
                        child: SizedBox(
                          height: 100,
                          width: 150,
                          child:  Column(
                            children: [
                              Text("Md. Asraful Alom", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),
                              Text("Developer", style: TextStyle(
                                color: secondaryText,
                              ),
                              ),
                            ],
                          ),
                        )
                    )
                  ],

                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //   ------------------------------Other Part------------------
            Row(
              children: [
                Column(
                  children: [
                     // --------------------------Job Experience------------------------
                     Container(
                       padding: const EdgeInsets.only(left: 10.0),
                      child: const Text("Jobs Experience",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                    ),
                    Container(

                    )
                  ],
                )
              ],
            ),
            const Row(
              children: [
                Column(
                  children: [

                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
