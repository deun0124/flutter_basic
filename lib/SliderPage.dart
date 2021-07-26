import 'package:flutter/material.dart';

class MySliderPage extends StatefulWidget {
  const MySliderPage({Key? key}) : super(key: key);

  @override
  _MySliderPageState createState() => _MySliderPageState();
}

class _MySliderPageState extends State<MySliderPage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.blue,
        ),
      ],
    );
  }
}
