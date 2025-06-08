import 'package:flutter/material.dart';
import 'package:sos/map/home.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          appbar(),
          ListView.builder(itemBuilder: (context, index) {},)
        ],
      ),
    );
  }
}
