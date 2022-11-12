// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// import 'package:flutter/services.dart';

// class CustomMap extends StatefulWidget {
//   const CustomMap({Key? key}) : super(key: key);

//   @override
//   _CustomMapState createState() => _CustomMapState();
// }

// class _CustomMapState extends State<CustomMap> {
//   GoogleMapController? _controller;
//   static const LatLng _center = LatLng(43.238949, 76.889709);

//   void _onMapCreated(GoogleMapController controller) {
//     setState(() {
//       _controller = controller;
//     });

//     rootBundle.loadString('assets/map_style.json').then((mapStyle) {
//       _controller?.setMapStyle(mapStyle);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GoogleMap(
//       onMapCreated: _onMapCreated,
//       initialCameraPosition: const CameraPosition(
//         target: _center,
//         zoom: 12,
//       ),
//     );
//   }
// }
