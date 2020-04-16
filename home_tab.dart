import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/gestures.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() {
    return _HomeTabState();
  }
}

class _HomeTabState extends State<HomeTab> {
  List<Marker> allMarkers = [];

  GoogleMapController _mapjump;

  @override
  void initState() {
    super.initState();
    allMarkers.add(Marker(
      markerId: MarkerId('RC BABEY!'),
      draggable: false,
      position: LatLng(37.2942, -80.0549)
    ));
  }

  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition startPosition = CameraPosition(
    target: LatLng(37.2942, -80.0549),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Home'),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 100,
                width: 100,
                child: Scaffold(
                  body: Center(
                    child: ListTile(
                      leading: FaIcon(
                          FontAwesomeIcons.creditCard,
                          color: Colors.black26,
                        ),
                      title: Text("\$1,065.98"),
                      subtitle: Text("Account Balance"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                width: 100,
                child: Scaffold(
                  body: GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: startPosition,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                      mapCreated(controller);
                    },
                    gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                      new Factory<OneSequenceGestureRecognizer>(
                            () => new EagerGestureRecognizer(),
                      ),
                    ].toSet(),
                    markers: Set.from(allMarkers),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Scaffold(
                  body: Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.exclamation,
                            color: Colors.black26,
                          ),
                          title: Text('College shut down due to COVID-19'),
                          subtitle: Text('Upadte from: Roanoke College'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Scaffold(
                  body: Card(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.exclamation,
                            color: Colors.black26,
                          ),
                          title: Text('Jamaica Flowers beginning to bloom!'),
                          subtitle: Text('Upadte from: Huerto Sustentable Akil'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  void mapCreated(controller) {
    setState(() {
      _mapjump = controller;
    });
  }

  movetoAkil() {
    _mapjump.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(20.2634, -89.3475), zoom: 12.0),
    ));
  }
}