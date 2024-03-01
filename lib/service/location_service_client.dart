import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:geolocator_apple/geolocator_apple.dart';
import 'package:geolocator_android/geolocator_android.dart';
import 'dart:io' show Platform;

class LocationService{
  LocationService(){
    late LocationSettings locationSettings;

  if (Platform.isAndroid) {
    locationSettings = AndroidSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 0,
      forceLocationManager: true,
      intervalDuration: const Duration(seconds: 1),
      //(Optional) Set foreground notification config to keep the app alive 
      //when going to the background
      foregroundNotificationConfig: const ForegroundNotificationConfig(
          notificationText:
          "Example app will continue to receive your location even when you aren't using it",
          notificationTitle: "Running in Background",
          enableWakeLock: true,
      )
    );
  } else if (Platform.isIOS) {
    locationSettings = AppleSettings(
      accuracy: LocationAccuracy.high,
      activityType: ActivityType.fitness,
      distanceFilter: 0,
      pauseLocationUpdatesAutomatically: true,
      // Only set to true if our app will be started up in the background.
      showBackgroundLocationIndicator: false,
    );
    } 
  
  StreamSubscription<Position> positionStream = Geolocator.getPositionStream(locationSettings: locationSettings).listen(
      (Position? position) {
          print(Platform.isAndroid ? "Android" : "iOS");
          print(position == null ? 'Unknown' : '${position.latitude.toString()}, ${position.longitude.toString()}');
      });
      
    }
}







