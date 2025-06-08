import 'package:flutter/material.dart';
class petrol_station extends StatelessWidget {
  final Function? onMapFunction;
  const petrol_station({super.key, this.onMapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,top: 8),
      child: Column(
        children: [
          InkWell(onTap: (){onMapFunction!("Petrol Station Near Me");},
            child: Card(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 50,
                width: 50,
                child: Center(
                  child: Image(
                    image: AssetImage('lib/assets/petrol.png'),
                    height: 30,
                  ),
                ),
              ),
            ),
          ),
          Text("Petrol Station",style: TextStyle(fontSize: 13),)
        ],
      ),
    );
  }
}
