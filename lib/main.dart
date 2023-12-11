import 'package:flutter/material.dart';
import 'package:dars_11/malumot/m.dart';
import 'package:dars_11/arg.dart/arg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final color = a;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'arg': (context) => ArgPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 225, 219, 219),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('img/app.png'),
                label: ' ',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Image.asset('img/app1.png'), label: ' '),
            BottomNavigationBarItem(
                icon: Image.asset('img/app2.png'), label: ' '),
            BottomNavigationBarItem(
                icon: Image.asset('img/app3.png'), label: ' '),
            BottomNavigationBarItem(
                icon: Image.asset('img/app4.png'), label: ' '),
          ],
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 225, 216, 216),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 50,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 280,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search product',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Snakers',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: Icon(Icons.keyboard_double_arrow_up_sharp),
                      ),
                      Icon(Icons.question_mark_outlined),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 238),
                    child: Text(
                      '25 products found',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 250),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'arg',
                            arguments: color[index]);
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80,
                              child: Image.asset(
                                color[index]['image'],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              color[index]['text'],
                              style: TextStyle(fontSize: 30),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              color[index]['text1'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Text(
                                color[index]['text2'],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                        color: color[index]['color'],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
