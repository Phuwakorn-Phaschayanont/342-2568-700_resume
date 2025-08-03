import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page3Screen extends StatelessWidget {
  const Page3Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var title = [
      'English',
      'Excel',
      'Python',
      'C++',
      'JavaScript',
      'MySQL',
    ];
    var subtitle = ['★★★★☆', '★★★★★', '★★★★★', '★★★★★', '★★★★☆', '★★★★☆'];
    var image = [
      'assets/images/english.jpg',
      'assets/images/excel.png',
      'assets/images/python.png',
      'assets/images/c++.png',
      'assets/images/java.jpg',
      'assets/images/mysql.jpg',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('ความสามารถพิเศษ')),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
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
            const SizedBox(height: 23),
            Expanded(
              child: ListView.builder(
                itemCount: title.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(title[index]),
                      subtitle: Text(
                        subtitle[index],
                        style: TextStyle(fontSize: 12),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(image[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
