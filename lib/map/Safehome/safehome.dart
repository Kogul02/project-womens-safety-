import 'package:flutter/material.dart';

class safehome extends StatelessWidget {
  showmodelSafeHome(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * .75,
            width: MediaQuery.of(context).size.width * 1,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.pinkAccent, width: 3)),
            child: Column(children: [Text("Swipe Down to close the tab")],),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showmodelSafeHome(context);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
            gradient:
                LinearGradient(colors: [Colors.white24,Colors.white24, Colors.greenAccent,])),
        height: 180,
        width: MediaQuery.of(context).size.width * 1.1,
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                ListTile(
                  title: Text("Share Location"),
                  subtitle: Text("Tap to share"),
                )
              ],
            )),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                image: AssetImage('lib/assets/share.png'),
                width: 200,
                height: 180,
              ),
            )
          ],
        ),
      ),
    );
  }
}
