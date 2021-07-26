import 'package:flutter/material.dart';
import 'package:flutter_01/AnimatedContainer.dart';
import 'package:flutter_01/AnimatedOpacity.dart';
import 'package:flutter_01/FormValidataion.dart';
import 'package:flutter_01/MyDrawer.dart';
import 'package:flutter_01/OrientationBuilder.dart';
import 'package:flutter_01/RootPage.dart';
import 'package:flutter_01/SliderPage.dart';
import 'package:flutter_01/SliderTabPage.dart';
import 'package:flutter_01/SnackBar.dart';
import 'package:flutter_01/SwipeToDismiss.dart';
import 'package:flutter_01/TabController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tutorial'),
          ),
          body: Home()),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('AnimatedContainer'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
          },
        ),
        ListTile(
            title: Text('AnimatedOpacity'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
            }),
        ListTile(
            title: Text('Drawer'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyDrawer()));
            }),
        ListTile(
            title: Text('SnackBar'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySnackBar()));
            }),
        ListTile(
            title: Text('OrientationBuilder'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyOrientaition()));
            }),
        ListTile(
            title: Text('TabController'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyTapController()));
            }),
        ListTile(
            title: Text('FormValidation'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyFormValidation()));
            }),
        ListTile(
            title: Text('SwipeToDismiss'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySwipeTodismiss()));
            }),
        ListTile(
            title: Text('SliderPage'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySliderPage()));
            }),
        ListTile(
            title: Text('SliderTabPage'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySliderTabPage()));
            }),
      ],
    );
  }
}
