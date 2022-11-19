import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(43.238949, 76.889709),
    zoom: 14.4746,
  );
  static final Marker _kGooglePlexMarker = Marker(
      markerId: MarkerId('Местоположение'),
      infoWindow: InfoWindow(
        title: 'Местоположение',
      ),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(43.238949, 76.889709));
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(43.238949, 76.889709),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static final Marker _kLakeMarker = Marker(
      markerId: MarkerId('Точка В'),
      infoWindow: InfoWindow(title: 'Точка В'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      position: LatLng(43.24236670345229, 76.95001512883566));

  static final Polyline _kPolyline = Polyline(
    polylineId: PolylineId('KPoly'),
    points: [
      LatLng(43.238949, 76.889709),
      LatLng(43.24236670345229, 76.95001512883566)
    ],
    width: 5,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        markers: {_kGooglePlexMarker, _kLakeMarker},
        polylines: {
          _kPolyline,
        },
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xff007A53),
        onPressed: _goToTheLake,
        label: Text('Где я?'),
        icon: Icon(Icons.location_city),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
