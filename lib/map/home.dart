import 'package:flutter/material.dart';
import 'Safehome/safehome.dart';
import 'safezone/Safezone.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            child: appbar(),
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text("Safe Area",style: TextStyle(fontSize: 20),),
          ),

          Expanded(
            child: Safezone(),
          ),
          safehome(),
        ],
      ),
    );
  }
}

appbar() {
}
