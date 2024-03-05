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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Teste'),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.open_in_new),
        // ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
          PopupMenuButton(itemBuilder: ((context) {
            return [
              PopupMenuItem(
                value: 0,
                child: Text('My Account'),
              ),
              PopupMenuItem(
                value: 0,
                child: Text('Settings'),
              ),
              PopupMenuItem(
                value: 0,
                child: Text('Logout'),
              ),
            ];
          }))
        ],
      ),
      // drawer: Drawer(
      //     child: ListView(
      //   children: <Widget>[
      //     ListTile(
      //       leading: Icon(Icons.open_with_rounded),
      //       title: Text('Item 1'),
      //       onTap: () {},
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.dialer_sip_rounded),
      //       title: Text('Item 1'),
      //       onTap: () {},
      //     ),
      //     Divider(
      //       height: 10,
      //     ),
      //     ExpansionTile(
      //       childrenPadding: EdgeInsetsDirectional.only(),
      //       title: Text('Lista Expansivel'),
      //       leading: Icon(Icons.person_add),
      //       children: [
      //         ListTile(
      //           leading: Icon(Icons.dialer_sip_rounded),
      //           title: Text(''),
      //           onTap: () {},
      //         ),
      //         ListTile(
      //           leading: Icon(Icons.add),
      //           title: Text(''),
      //           onTap: () {},
      //         ),
      //       ],
      //     )
      //   ],
      // )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            width: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/Odin',
                ),
              ),
            ),
          ),
          Card(
            elevation: 5,
            color: Color.fromARGB(255, 62, 94, 235),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(Icons.person),
                SizedBox(
                  height: 30,
                  width: 210,
                ),
                Text(
                  'Odin',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ]),
            ),
          )
        ],
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
        color: Colors.cyan,
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.print,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.people,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
