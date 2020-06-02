import 'package:adhan_times/services/networking.dart';

const apiUrl = "https://api.pray.zone/v2/times/today.json";

class PrayerModel {

  Future<dynamic> getCityPrayers(String cityName) async {
    cityName = cityName.trim();
    if(cityName.contains(" ")) {
      cityName = cityName.replaceAll(new RegExp(r' '), "-");
    }
    var url = "$apiUrl?city=$cityName";
    NetworkHelper networkHelper = NetworkHelper(url);
    var prayersData = await networkHelper.getData();
    return prayersData;
  }

}