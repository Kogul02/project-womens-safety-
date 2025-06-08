import 'package:flutter/material.dart';

class hospitalCard extends StatelessWidget {
  final Function? onMapFunction;
  const hospitalCard({super.key, this.onMapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,top: 8),
      child: Column(
        children: [
          InkWell(onTap: (){onMapFunction!("Hospital Near Me");},
            child: Card(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 50,
                width: 50,
                child: Center(
                  child: Image(
                    image: AssetImage('lib/assets/hospitall.png'),
                    height: 30,
                  ),
                ),
              ),
            ),
          ),
          Text("Hospital",style: TextStyle(fontSize: 13),)
        ],
      ),
    );
  }
}
