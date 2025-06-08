import 'package:flutter/material.dart';
class railway extends StatelessWidget {
final Function? onMapFunction;

  const railway({super.key, this.onMapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(onTap: (){onMapFunction!("railway Station Near Me");},
            child: Card(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 50,
                width: 50,
                child: Center(
                  child: Image(
                    image: AssetImage('lib/assets/railway.png'),
                    height: 30,
                  ),
                ),
              ),
            ),
          ),



          Text("railway Station",style: TextStyle(fontSize: 13),)
        ],
      ),
    );
  }
}


