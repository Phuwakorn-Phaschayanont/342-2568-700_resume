import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Kanit',
      ),
      home: const MyHomePage(title: 'My Resume'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [Colors.black, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(3),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
                radius: 107,
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.all(30),
              child: Center(child: Text('PHUWAKORN PHASCHAYANONT',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ))),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 10, // Shadow scale
            ),
            child: const Text('ข้อมูลส่วนตัวทั่วไป'),
            onPressed: () {
              // go to page 1
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Page1Screen(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 10, // Shadow scale
            ),
            child: const Text('การติดต่อ'),
            onPressed: () {
              // go to page 1
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Page2Screen(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 10, // Shadow scale
            ),
            child: const Text('ความสามารถ'),
            onPressed: () {
              // go to page 1
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Page3Screen(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 10, // Shadow scale
            ),
            child: const Text('ระดับการศึกษา'),
            onPressed: () {
              // go to page 1
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Page4Screen(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 10, // Shadow scale
            ),
            child: const Text('งานอดิเรก'),
            onPressed: () {
              // go to page 1
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Page5Screen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
