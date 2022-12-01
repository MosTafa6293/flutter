import 'package:clown/screens/login.dart';
import 'package:clown/screens/provider_register_page.dart';
import 'package:clown/screens/request_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var marker = <Marker>[];

    marker = [
      Marker(
        point: LatLng(30.0609, 31.2197),
        builder: (ctx) => const Icon(
            CupertinoIcons.location_solid,
            color: Colors.blue,
        ),
      ),
      Marker(
        point: LatLng(30.068429, 31.215395),
        builder: (ctx) => const Icon(
          CupertinoIcons.location_solid,
          color: Colors.red,
        ),
      ),
      Marker(
        point: LatLng(30.066496, 31.213777),
        builder: (ctx) => const Icon(
          CupertinoIcons.location_solid,
          color: Colors.green,
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF141C24),
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Flexible(
                child: FlutterMap(
                  options:
                      MapOptions(center: LatLng(30.0609, 31.2197), zoom: 16),
                  layers: [
                    TileLayerOptions(
                        urlTemplate:
                            "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a', 'b', 'c']),
                    MarkerLayerOptions(
                      markers: marker
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF0B1927),
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: const EdgeInsets.only(left: 20, top: 75),
          children: [
            ListTile(
              leading: const Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: const Text('Profile'),
              textColor: Colors.white,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:
                  const Icon(CupertinoIcons.person_fill, color: Colors.white),
              title: const Text('Provider'),
              textColor: Colors.white,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.of(context).push(MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (_) => ProviderRegisterPage()));
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.doc_text_viewfinder,
                  color: Colors.white),
              title: const Text('Request a service'),
              textColor: Colors.white,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.of(context).push(MaterialPageRoute(
                    fullscreenDialog: true, builder: (_) => RequestPage()));
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.xmark, color: Colors.white),
              title: const Text('Sign out'),
              textColor: Colors.white,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.of(context).push(MaterialPageRoute(
                    fullscreenDialog: true, builder: (_) => LoginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
