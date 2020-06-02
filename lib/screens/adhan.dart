import 'package:flutter/material.dart';
import 'package:adhan_times/utils/constants.dart';
import 'package:adhan_times/components/icon_text.dart';
import 'package:adhan_times/components/waktuSalat.dart';

class TimesPage extends StatefulWidget {
  final dynamic timesData;
  TimesPage({this.timesData});

  @override
  _TimesPageState createState() => _TimesPageState();
}

class _TimesPageState extends State<TimesPage> {
  String todayTime;
  String imsakTime;
  String fajrTime;
  String duhrTime;
  String asrTime;
  String maghrebTime;
  String aishaTime;
  String sunriseTime;
  String cityName;
  String countryName;
  dynamic data;

  @override
  void initState() {
    super.initState();
    data = widget.timesData;
    getPrayerData();
  }

  void getPrayerData() {
    setState(() {
      todayTime = data["results"]["datetime"][0]["date"]["hijri"];
      imsakTime = data["results"]["datetime"][0]["times"]["Imsak"];
      fajrTime = data["results"]["datetime"][0]["times"]["Fajr"];
      duhrTime = data["results"]["datetime"][0]["times"]["Dhuhr"];
      asrTime = data["results"]["datetime"][0]["times"]["Asr"];
      maghrebTime = data["results"]["datetime"][0]["times"]["Maghrib"];
      aishaTime = data["results"]["datetime"][0]["times"]["Isha"];
      sunriseTime = data["results"]["datetime"][0]["times"]["Sunrise"];
      cityName = data["results"]["location"]["city"];
      countryName = data["results"]["location"]["country"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [color1, color2])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.menu, color: Colors.white)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Prayer Alarms",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Text(
            "Prayer becomes timely",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(
            height: 25,
          ),
          IconText(
            icon: Icon(
              Icons.location_on,
              color: Colors.white,
              size: 15,
            ),
            title: "${cityName ?? ""}, ${countryName ?? ""}",
            subTitle: "Current Location",
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 15,
          ),
          IconText(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.white,
                size: 15,
              ),
              title: todayTime ?? "",
              subTitle: "Today's Date"),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: ListView(
                children: <Widget>[
                  WaktuSalat(
                    name: "Imsak",
                    time: imsakTime ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "Fajr",
                    time: fajrTime ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "Duhur",
                    time: duhrTime ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "Asr",
                    time: asrTime ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "Maghrib",
                    time: maghrebTime ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "Isha",
                    time: aishaTime ?? "",
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
