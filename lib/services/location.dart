import 'package:geolocator/geolocator.dart';

class Location {
  double latitude, longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.altitude;
      longitude = position.latitude;
      print(' Longitude $latitude');
      print(' Altitude $longitude');
    } catch (e) {
      print('Error $e');
    }
  }
}
