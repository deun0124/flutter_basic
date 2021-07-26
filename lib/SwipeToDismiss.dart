import 'package:flutter/material.dart';

class MySwipeTodismiss extends StatefulWidget {
  const MySwipeTodismiss({Key? key}) : super(key: key);

  @override
  _MySwipeTodismissState createState() => _MySwipeTodismissState();
}

class _MySwipeTodismissState extends State<MySwipeTodismiss> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swippe To Dismiss'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              direction: DismissDirection.startToEnd,
              background: Container(color: Colors.red),
              onDismissed: (direction) {
                setState(() {
                  if (direction == DismissDirection.startToEnd)
                    items.removeAt(index);
                });
              },
              key: Key(item),
              child: ListTile(
                title: Text('${items[index]}'),
              ),
            );
          }),
    );
  }
}
