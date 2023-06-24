import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: secondScreen(),
    );
  }

  Widget secondScreen() {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 181, 208, 253),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 15.0,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          "Bedroom AC",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.power_settings_new,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            // Full screen Column
            children: [
              Container(
                // 16 C
                width: double.infinity,
                padding: const EdgeInsets.only(top: 140.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: const Text(
                        "16",
                        style: TextStyle(fontSize: 100.0),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: const Text(
                        "°C",
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit),
                  Text(
                    "  Cooling Mode",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 250.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.00),
                      color: Colors.blueGrey,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70.0, vertical: 18.0),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.00),
                      color: Colors.blueGrey,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70.0, vertical: 18.0),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.all(5.00),
                      color: Colors.blueGrey,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.alarm),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 18.0),
                      )),
                  Container(
                      margin: const EdgeInsets.all(5.00),
                      color: Colors.blueGrey,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.ac_unit_sharp),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 18.0),
                      )),
                  Container(
                      margin: const EdgeInsets.all(5.00),
                      color: Colors.blueGrey,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.wind_power_sharp),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 18.0),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
