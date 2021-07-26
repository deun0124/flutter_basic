import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text('Item1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item2'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item3'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Center(
        child: Text('Drawer예제'),
      ),
    );
  }
}
