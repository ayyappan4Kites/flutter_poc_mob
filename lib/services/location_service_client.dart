import 'dart:async';
import 'dart:ffi';

import 'package:flutter_poc_mob/util/constants.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator_apple/geolocator_apple.dart';
import 'package:geolocator_android/geolocator_android.dart';
import 'dart:io' show Platform;

class LocationService {
  Future<void> createLocationService() async {
    late LocationSettings locationSettings;

    if (Platform.isAndroid) {
      locationSettings = AndroidSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: DISTANCE_FILTER,
          forceLocationManager: true,
          intervalDuration: const Duration(seconds: FREQUENCY_INTERVAL),
          foregroundNotificationConfig: const ForegroundNotificationConfig(
            notificationText:
                "Example app will continue to receive your location even when you aren't using it",
            notificationTitle: "Running in Background",
            enableWakeLock: true,
          ));
    } else if (Platform.isIOS) {
      locationSettings = AppleSettings(
        accuracy: LocationAccuracy.high,
        activityType: ActivityType.fitness,
        distanceFilter: DISTANCE_FILTER,
        pauseLocationUpdatesAutomatically: true,
        // Only set to true if our app will be started up in the background.
        showBackgroundLocationIndicator: true,
      );
    }

    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (isLocationServiceEnabled && Platform.isIOS) {
      getCurrentLocationForIOS();
    } else {
      StreamSubscription<Position> positionStream =
          Geolocator.getPositionStream(locationSettings: locationSettings)
              .listen((Position? position) {
        print(Platform.isAndroid ? "Android" : "iOS");
        print(position == null
            ? 'Unknown'
            : '${position.latitude.toString()}, ${position.longitude.toString()}');
      });
    }
  }

  void getCurrentLocationForIOS() async {
    var position = await Geolocator.getCurrentPosition();
    print("from getCurrentLocationForIOS ${position}");
  }
}
