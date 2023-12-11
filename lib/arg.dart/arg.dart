import 'package:flutter/material.dart';

class ArgPage extends StatelessWidget {
  const ArgPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 50),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40, top: 30),
              child: Image.asset(
                arg['image'],
                fit: BoxFit.fill,
                height: 150,
                width: 300,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15),
                child: Image.asset('img/ima.png'),
              ),
              Image.asset('img/ima.png'),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset('img/ima2.png'),
              ),
              Image.asset('img/ima3.png'),
              Image.asset('img/ima4.png'),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 170),
                child: Text(
                  arg['text'],
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
              ),
              Text(
                arg['text2'],
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70, top: 10, bottom: 10),
            child: Text(
              'Air Force 1 Shodow Beige Pale Ivory',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
          Container(
            width: 360,
            height: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Text(
              'Eros,  parturient  sit  posuere  amet.  Sed  dignissim  enim  nulla  egestas  vitae  id  augue  eleifend.  Nam  commodo  scelerisque  enim  integer  risus,  non ... ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            width: 360,
            height: 1,
            color: Colors.grey,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 200, top: 10),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'Size',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'EUR',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'UK',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Text(
                'US',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 17,
                  ),
                  child: Image.asset('img/raqam.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: Image.asset('img/raqam1.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: Image.asset('img/raqam2.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: Image.asset('img/raqam3.png'),
                ),
                Image.asset('img/raqam4.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                  alignment: Alignment.center,
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black)))),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Add To Cart',
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
