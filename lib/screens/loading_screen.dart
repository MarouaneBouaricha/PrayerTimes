import 'package:adhan_times/screens/adhan.dart';
import 'package:adhan_times/services/prayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:adhan_times/utils/constants.dart';

class LoadingScreen extends StatefulWidget {
  final String cityName;

  LoadingScreen({this.cityName});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData(widget.cityName);
  }

  void getLocationData(String cityName) async {
    PrayerModel prayerModel = PrayerModel();
    var timesData = await prayerModel.getCityPrayers(cityName);
    print(timesData);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TimesPage(timesData: timesData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [color1, color2])),
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 80.0,
          ),
        ),
      ),
    );
  }
}
