import 'package:flutter/material.dart';
import 'package:flutter_01/AnimatedOpacity.dart';
import 'AnimatedContainer.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("목록"),
        ),
        body: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyAnimatedContainer()));
              },
              child: Text("AnimatedContainer"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyAnimatedOpacity()));
                },
                child: Text("AnimatedContainer"),
              ),
            ),
          ],
        ));
  }
}
