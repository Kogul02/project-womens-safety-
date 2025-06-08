import 'package:flutter/material.dart';
class busStop extends StatelessWidget {
  final Function? onMapFunction;
  const busStop({super.key, this.onMapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0,top: 8),
      child: Column(
        children: [
          InkWell(onTap: (){onMapFunction!("Bus Stop Station Near Me");},
            child: Card(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 50,
                width: 50,
                child: Center(
                  child: Image(
                    image: AssetImage('lib/assets/bustop.png'),
                    height: 30,
                  ),
                ),
              ),
            ),
          ),
          Text("Bus Stop",style: TextStyle(fontSize: 13),)
        ],
      ),
    );
  }
}
