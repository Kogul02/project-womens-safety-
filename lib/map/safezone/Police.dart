import 'package:flutter/material.dart';

class policeCard extends StatelessWidget {
  final Function? onMapFunction;
  const policeCard({super.key,this.onMapFunction});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,top: 8),
      child: Column(
        children: [
          InkWell(onTap: (){onMapFunction!("Police Station Near Me");},
            child: Card(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 50,
                width: 50,
                child: Center(
                  child: Image(
                    image: AssetImage('lib/assets/polce.png'),
                    height: 30,
                  ),
                ),
              ),
            ),
          ),
          Text("Police Station",style: TextStyle(fontSize: 13),)
        ],
      ),
    );
  }
}
