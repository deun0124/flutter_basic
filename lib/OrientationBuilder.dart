import 'package:flutter/material.dart';

class MyOrientaition extends StatefulWidget {
  const MyOrientaition({Key? key}) : super(key: key);

  @override
  _MyOrientaitionState createState() => _MyOrientaitionState();
}

class _MyOrientaitionState extends State<MyOrientaition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('OrientationBuilder'),
        ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
              children: List.generate(50, (position) {
                return Center(
                  child: Text('Item $position'),
                );
              }),
            );
          },
        ));
  }
}
