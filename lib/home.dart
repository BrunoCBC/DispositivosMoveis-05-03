// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
      appBar: AppBar(
          title: Text('Aula 12 03'),
          backgroundColor: Theme.of(context).colorScheme.primary),
      body: Center(
        child: Container(
          height: 180,
          width: 330,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 53, 53, 53),
                Color.fromARGB(255, 122, 122, 122),
              ]),
              borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Positioned(
                right: 10,
                top: 10,
                bottom: 60,
                child: Container(
                  width: 110,
                  height: 110,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Odin2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Odin',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'All-Father',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      'Vallhalla',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone_callback,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '+ ',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'teste@teste.com',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 25,
        ),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 53, 53, 53),
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.print,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.people,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
