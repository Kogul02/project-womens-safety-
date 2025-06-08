import 'package:flutter/material.dart';
import 'BusStop.dart';
import 'Hospital.dart';
import 'Police.dart';
import 'petrol_station.dart';
import 'pharmacy.dart';
import 'railway%20station.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Safezone extends StatefulWidget {
  const Safezone({super.key});
  @override
  State<Safezone> createState() => _SafezoneState();
}

class _SafezoneState extends State<Safezone> {

  static Future<void> Openmap(String location) async {
    String googleurl =
        'https://www.google.com/maps/search/$location';
    final Uri _url = Uri.parse(googleurl);
    try {
      await launchUrl(_url);
    } catch (e) {
      Fluttertoast.showToast(msg: "something went wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          policeCard(onMapFunction: Openmap,),
          hospitalCard(onMapFunction: Openmap),
          busStop(onMapFunction: Openmap),
          pharamacy(onMapFunction: Openmap),
          petrol_station(onMapFunction: Openmap),
          railway(onMapFunction: Openmap)
        ],
      ),
    );
  }
}
