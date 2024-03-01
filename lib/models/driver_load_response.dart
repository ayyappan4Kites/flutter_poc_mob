class GetDriverLoads {
    GetDriverLoads({
        required this.aggregatedStatusCodes,
        required this.code,
        required this.loads,
        required this.requestId,
        required this.retry,
        required this.statusCode,
    });

    final List<int> aggregatedStatusCodes;
    final int? code;
    final List<Load> loads;
    final String? requestId;
    final bool? retry;
    final int? statusCode;

    factory GetDriverLoads.fromJson(Map<String, dynamic> json){ 
        return GetDriverLoads(
            aggregatedStatusCodes: json["aggregatedStatusCodes"] == null ? [] : List<int>.from(json["aggregatedStatusCodes"]!.map((x) => x)),
            code: json["code"],
            loads: json["loads"] == null ? [] : List<Load>.from(json["loads"]!.map((x) => Load.fromJson(x))),
            requestId: json["request_id"],
            retry: json["retry"],
            statusCode: json["statusCode"],
        );
    }

}

class Load {
    Load({
        required this.id,
        required this.loadNumber,
        required this.status,
        required this.loadStatusMobile,
        required this.origin,
        required this.destination,
        required this.shipperId,
        required this.shipper,
        required this.carrier,
        required this.carrierId,
        required this.the3Pl,
        required this.the3PlId,
        required this.modules,
        required this.fileUploadEnabled,
        required this.truckNum,
        required this.trailerNum,
        required this.railEquipmentInitials,
        required this.railEquipmentNumber,
        required this.useMobileTracking,
        required this.mobileTrackingEnabled,
        required this.shorthaul,
        required this.stops,
        required this.createdAt,
        required this.stopTracking,
        required this.testLoad,
        required this.trackable,
        required this.unassignEnabled,
        required this.firstLocationPingAt,
        required this.loadMode,
        required this.modes,
        required this.actualLoadMode,
        required this.priority,
        required this.numberOfDeliveryStops,
        required this.isLocationServiceTrackedLoad,
        required this.pickedUp,
        required this.incentiveLoad,
        required this.managingCarrierId,
        required this.managingCarrierName,
        required this.appointmentRange,
        required this.pickupAppointmentRange,
        required this.deliveryAppointmentRange,
        required this.mobileLicensedFeatures,
        required this.deliveryMode,
        required this.destinationAddress,
        required this.destinationAppointmentTime,
        required this.destinationCalculatedAppointmentTime,
        required this.destinationEarliestAppointmentTime,
        required this.destinationLatestAppointmentTime,
        required this.destinationStopId,
        required this.destinationTimeZoneName,
        required this.destinationTimeZoneOffset,
        required this.etaConfiguration,
        required this.firstCheckCallAt,
        required this.latestCheckCallAt,
        required this.linkedLoadId,
        required this.locationMilestones,
        required this.originAddress,
        required this.originAppointmentTime,
        required this.originEarliestAppointmentTime,
        required this.originLatestAppointmentTime,
        required this.originStopId,
        required this.originTimeZoneName,
        required this.originTimeZoneOffset,
        required this.simultaneousTrackingReferenceNumber,
        required this.trackingStatus,
        required this.trackingStrategy,
        required this.eligibleForIncentives,
        required this.paid,
    });

    final int? id;
    final String? loadNumber;
    final String? status;
    final String? loadStatusMobile;
    final String? origin;
    final String? destination;
    final String? shipperId;
    final String? shipper;
    final dynamic carrier;
    final String? carrierId;
    final dynamic the3Pl;
    final dynamic the3PlId;
    final List<String> modules;
    final bool? fileUploadEnabled;
    final dynamic truckNum;
    final String? trailerNum;
    final dynamic railEquipmentInitials;
    final dynamic railEquipmentNumber;
    final bool? useMobileTracking;
    final bool? mobileTrackingEnabled;
    final bool? shorthaul;
    final List<Stop> stops;
    final DateTime? createdAt;
    final bool? stopTracking;
    final bool? testLoad;
    final bool? trackable;
    final bool? unassignEnabled;
    final dynamic firstLocationPingAt;
    final String? loadMode;
    final List<String> modes;
    final String? actualLoadMode;
    final String? priority;
    final int? numberOfDeliveryStops;
    final bool? isLocationServiceTrackedLoad;
    final bool? pickedUp;
    final bool? incentiveLoad;
    final String? managingCarrierId;
    final String? managingCarrierName;
    final String? appointmentRange;
    final String? pickupAppointmentRange;
    final String? deliveryAppointmentRange;
    final List<String> mobileLicensedFeatures;
    final dynamic deliveryMode;
    final String? destinationAddress;
    final dynamic destinationAppointmentTime;
    final dynamic destinationCalculatedAppointmentTime;
    final dynamic destinationEarliestAppointmentTime;
    final dynamic destinationLatestAppointmentTime;
    final int? destinationStopId;
    final String? destinationTimeZoneName;
    final int? destinationTimeZoneOffset;
    final EtaConfiguration? etaConfiguration;
    final dynamic firstCheckCallAt;
    final dynamic latestCheckCallAt;
    final dynamic linkedLoadId;
    final dynamic locationMilestones;
    final String? originAddress;
    final dynamic originAppointmentTime;
    final dynamic originEarliestAppointmentTime;
    final dynamic originLatestAppointmentTime;
    final int? originStopId;
    final String? originTimeZoneName;
    final int? originTimeZoneOffset;
    final dynamic simultaneousTrackingReferenceNumber;
    final TrackingStatus? trackingStatus;
    final String? trackingStrategy;
    final dynamic eligibleForIncentives;
    final dynamic paid;

    factory Load.fromJson(Map<String, dynamic> json){ 
        return Load(
            id: json["id"],
            loadNumber: json["loadNumber"],
            status: json["status"],
            loadStatusMobile: json["loadStatusMobile"],
            origin: json["origin"],
            destination: json["destination"],
            shipperId: json["shipperId"],
            shipper: json["shipper"],
            carrier: json["carrier"],
            carrierId: json["carrierId"],
            the3Pl: json["3pl"],
            the3PlId: json["3plId"],
            modules: json["modules"] == null ? [] : List<String>.from(json["modules"]!.map((x) => x)),
            fileUploadEnabled: json["fileUploadEnabled"],
            truckNum: json["truckNum"],
            trailerNum: json["trailerNum"],
            railEquipmentInitials: json["railEquipmentInitials"],
            railEquipmentNumber: json["railEquipmentNumber"],
            useMobileTracking: json["useMobileTracking"],
            mobileTrackingEnabled: json["mobileTrackingEnabled"],
            shorthaul: json["shorthaul"],
            stops: json["stops"] == null ? [] : List<Stop>.from(json["stops"]!.map((x) => Stop.fromJson(x))),
            createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
            stopTracking: json["stopTracking"],
            testLoad: json["testLoad"],
            trackable: json["trackable"],
            unassignEnabled: json["unassignEnabled"],
            firstLocationPingAt: json["firstLocationPingAt"],
            loadMode: json["loadMode"],
            modes: json["modes"] == null ? [] : List<String>.from(json["modes"]!.map((x) => x)),
            actualLoadMode: json["actualLoadMode"],
            priority: json["priority"],
            numberOfDeliveryStops: json["numberOfDeliveryStops"],
            isLocationServiceTrackedLoad: json["isLocationServiceTrackedLoad"],
            pickedUp: json["pickedUp"],
            incentiveLoad: json["incentiveLoad"],
            managingCarrierId: json["managingCarrierId"],
            managingCarrierName: json["managingCarrierName"],
            appointmentRange: json["appointmentRange"],
            pickupAppointmentRange: json["pickupAppointmentRange"],
            deliveryAppointmentRange: json["deliveryAppointmentRange"],
            mobileLicensedFeatures: json["mobileLicensedFeatures"] == null ? [] : List<String>.from(json["mobileLicensedFeatures"]!.map((x) => x)),
            deliveryMode: json["deliveryMode"],
            destinationAddress: json["destinationAddress"],
            destinationAppointmentTime: json["destinationAppointmentTime"],
            destinationCalculatedAppointmentTime: json["destinationCalculatedAppointmentTime"],
            destinationEarliestAppointmentTime: json["destinationEarliestAppointmentTime"],
            destinationLatestAppointmentTime: json["destinationLatestAppointmentTime"],
            destinationStopId: json["destinationStopId"],
            destinationTimeZoneName: json["destinationTimeZoneName"],
            destinationTimeZoneOffset: json["destinationTimeZoneOffset"],
            etaConfiguration: json["etaConfiguration"] == null ? null : EtaConfiguration.fromJson(json["etaConfiguration"]),
            firstCheckCallAt: json["firstCheckCallAt"],
            latestCheckCallAt: json["latestCheckCallAt"],
            linkedLoadId: json["linkedLoadId"],
            locationMilestones: json["locationMilestones"],
            originAddress: json["originAddress"],
            originAppointmentTime: json["originAppointmentTime"],
            originEarliestAppointmentTime: json["originEarliestAppointmentTime"],
            originLatestAppointmentTime: json["originLatestAppointmentTime"],
            originStopId: json["originStopId"],
            originTimeZoneName: json["originTimeZoneName"],
            originTimeZoneOffset: json["originTimeZoneOffset"],
            simultaneousTrackingReferenceNumber: json["simultaneousTrackingReferenceNumber"],
            trackingStatus: json["trackingStatus"] == null ? null : TrackingStatus.fromJson(json["trackingStatus"]),
            trackingStrategy: json["trackingStrategy"],
            eligibleForIncentives: json["eligibleForIncentives"],
            paid: json["paid"],
        );
    }

}

class EtaConfiguration {
    EtaConfiguration({
        required this.early,
        required this.late,
        required this.onTime,
        required this.onTimePerformanceOptions,
        required this.veryLate,
    });

    final Early? early;
    final Early? late;
    final Early? onTime;
    final String? onTimePerformanceOptions;
    final Early? veryLate;

    factory EtaConfiguration.fromJson(Map<String, dynamic> json){ 
        return EtaConfiguration(
            early: json["early"] == null ? null : Early.fromJson(json["early"]),
            late: json["late"] == null ? null : Early.fromJson(json["late"]),
            onTime: json["onTime"] == null ? null : Early.fromJson(json["onTime"]),
            onTimePerformanceOptions: json["onTimePerformanceOptions"],
            veryLate: json["veryLate"] == null ? null : Early.fromJson(json["veryLate"]),
        );
    }

}

class Early {
    Early({
        required this.high,
        required this.low,
    });

    final int? high;
    final int? low;

    factory Early.fromJson(Map<String, dynamic> json){ 
        return Early(
            high: json["high"],
            low: json["low"],
        );
    }

}

class Stop {
    Stop({
        required this.id,
        required this.stopId,
        required this.name,
        required this.addressLine1,
        required this.addressLine2,
        required this.city,
        required this.state,
        required this.country,
        required this.type,
        required this.stopType,
        required this.status,
        required this.latitude,
        required this.longitude,
        required this.postal,
        required this.stopReferenceId,
        required this.referenceNumbers,
        required this.arrivalGeofenceRadius,
        required this.geofenceRadius,
        required this.defaultGeofenceRadius,
        required this.geofenceRadiusToUse,
        required this.nearbyGeofenceRadius,
        required this.customer,
        required this.isAmenitiesAvailable,
        required this.arrivalTime,
        required this.departureTime,
        required this.intermodalPlacement,
        required this.county,
        required this.district,
        required this.postalCode,
        required this.locationType,
        required this.addressOutsidePolygonGeofence,
        required this.externalAddressId,
        required this.completeAddress,
        required this.appointmentTime,
        required this.earliestAppointmentTime,
        required this.latestAppointmentTime,
        required this.wantTime,
        required this.timeZoneOffset,
        required this.timeZoneFullName,
        required this.timeZoneName,
        required this.addressId,
        required this.addressVersionId,
        required this.events,
    });

    final int? id;
    final int? stopId;
    final String? name;
    final String? addressLine1;
    final dynamic addressLine2;
    final String? city;
    final String? state;
    final String? country;
    final String? type;
    final String? stopType;
    final String? status;
    final String? latitude;
    final String? longitude;
    final String? postal;
    final String? stopReferenceId;
    final dynamic referenceNumbers;
    final int? arrivalGeofenceRadius;
    final int? geofenceRadius;
    final int? defaultGeofenceRadius;
    final dynamic geofenceRadiusToUse;
    final int? nearbyGeofenceRadius;
    final dynamic customer;
    final bool? isAmenitiesAvailable;
    final String? arrivalTime;
    final String? departureTime;
    final bool? intermodalPlacement;
    final String? county;
    final dynamic district;
    final String? postalCode;
    final dynamic locationType;
    final bool? addressOutsidePolygonGeofence;
    final dynamic externalAddressId;
    final String? completeAddress;
    final String? appointmentTime;
    final String? earliestAppointmentTime;
    final String? latestAppointmentTime;
    final dynamic wantTime;
    final int? timeZoneOffset;
    final String? timeZoneFullName;
    final String? timeZoneName;
    final int? addressId;
    final int? addressVersionId;
    final dynamic events;

    factory Stop.fromJson(Map<String, dynamic> json){ 
        return Stop(
            id: json["id"],
            stopId: json["stopId"],
            name: json["name"],
            addressLine1: json["addressLine1"],
            addressLine2: json["addressLine2"],
            city: json["city"],
            state: json["state"],
            country: json["country"],
            type: json["type"],
            stopType: json["stopType"],
            status: json["status"],
            latitude: json["latitude"],
            longitude: json["longitude"],
            postal: json["postal"],
            stopReferenceId: json["stopReferenceId"],
            referenceNumbers: json["referenceNumbers"],
            arrivalGeofenceRadius: json["arrivalGeofenceRadius"],
            geofenceRadius: json["geofenceRadius"],
            defaultGeofenceRadius: json["defaultGeofenceRadius"],
            geofenceRadiusToUse: json["geofenceRadiusToUse"],
            nearbyGeofenceRadius: json["nearbyGeofenceRadius"],
            customer: json["customer"],
            isAmenitiesAvailable: json["isAmenitiesAvailable"],
            arrivalTime: json["arrivalTime"],
            departureTime: json["departureTime"],
            intermodalPlacement: json["intermodalPlacement"],
            county: json["county"],
            district: json["district"],
            postalCode: json["postalCode"],
            locationType: json["locationType"],
            addressOutsidePolygonGeofence: json["addressOutsidePolygonGeofence"],
            externalAddressId: json["externalAddressId"],
            completeAddress: json["completeAddress"],
            appointmentTime: json["appointmentTime"],
            earliestAppointmentTime: json["earliestAppointmentTime"],
            latestAppointmentTime: json["latestAppointmentTime"],
            wantTime: json["wantTime"],
            timeZoneOffset: json["timeZoneOffset"],
            timeZoneFullName: json["timeZoneFullName"],
            timeZoneName: json["timeZoneName"],
            addressId: json["addressId"],
            addressVersionId: json["addressVersionId"],
            events: json["events"],
        );
    }

}

class TrackingStatus {
    TrackingStatus({required this.json});
    final Map<String,dynamic> json;

    factory TrackingStatus.fromJson(Map<String, dynamic> json){ 
        return TrackingStatus(
        json: json
        );
    }

}
