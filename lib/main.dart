import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/rendering.dart';

/*
void main() {
  debugPaintSizeEnabled = true;
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('gmapstest')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return new MapsDemo();
        },
      ),
    ),
  ));
}
*/
void main() {
  //debugPaintSizeEnabled = true;
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('gmapstest')),
        body: MapsDemo(),
      ),
    ),
  );
}

class MapsDemo extends StatefulWidget {
  @override
  State createState() => MapsDemoState();
}

class MapsDemoState extends State<MapsDemo> {
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 300.0,
                maxHeight: 420.0,
                minWidth: 120.0,
                minHeight: 120.0,
              ),
              child: Container(
                margin: new EdgeInsets.all(8.0),
                constraints: BoxConstraints.expand(),
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(57.1656210, -2.1021930),
                    zoom: 16.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }
}
