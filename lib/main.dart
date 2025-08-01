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
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(          
          appBar: AppBar(
            backgroundColor: Colors.green,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              tab1(),
              tab2(),
              tab3(),
            ],
          ),
        ),
      ),
    );
  }

  Widget tab1() {
    return const Center(
      child: Text('Tab 1 Content'),
    );
  }
  Widget tab2() {
    return const Center(
      child: Text('Tab 2 Content'),
    );
  }
  Widget tab3() {
    return const Center(
      child: Text('Tab 3 Content'),
    );
  }
}
