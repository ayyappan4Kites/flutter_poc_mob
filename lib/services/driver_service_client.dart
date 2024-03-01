import 'dart:convert';

import 'package:flutter_poc_mob/models/driver_load_response.dart';
import 'package:http/http.dart' as http;

class driver_service_client {
  Future<GetDriverLoads> getDriverLoads() async {
    String url =
        "https://driver-service-staging.fourkites.com/api/v1/tracking/get_driver_loads?client_id=0e8dfd04759a469b9f000db9b87a21f6&timestamp=20240301110208&signature=lBi67q53AqQ5m0tTUCyGG6-ByX8%3D";
    final response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
    var result = GetDriverLoads.fromJson(responseData);
    print("driver_service_client - GetDriverLoads : "+ responseData);
    return result;
  }
}
