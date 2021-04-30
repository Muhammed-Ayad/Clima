import 'package:geolocator/geolocator.dart';


// بتجيب الموقع بتاعك وبيكون عبارة عن خط الطول والعرض 
class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
