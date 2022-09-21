import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.5,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.purple[50],
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withOpacity(0.6),
              blurRadius: 12,
              offset: const Offset(1, 2),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            height: 25,
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text('Title'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.delete),
          ),
          SizedBox(
            height: 25,
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text('Title'),
            subtitle: Text('subtitle'),
            trailing: Icon(Icons.delete),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
