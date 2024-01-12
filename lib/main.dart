import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilApp(),
    );
  }
}

class ProfilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight =
        MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Profile",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Image.asset(
                width: screenWidth,
                height: 200.0,
                fit: BoxFit.fitWidth,
                'assets/orage-product.jpg',
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 200 - 60, 0, 0),
                  padding: EdgeInsets.all(3.0),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 62.0,
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage('assets/pp.jpg'),
                      backgroundColor: Colors.white,
                    ),
                  ))
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            child: const Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 2,
                ),
                'Eryan GAUVRIT'
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.4)
              ),
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pretium lobortis tortor, quis sollicitudin est varius quis.'
            ),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  'Modifier le profil'
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
