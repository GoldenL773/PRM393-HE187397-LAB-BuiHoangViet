import 'package:flutter/material.dart';
import 'location.dart';
import 'location_detail.dart';
class LocationList extends StatelessWidget {
  const LocationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('We have a list of locations'),
      ),
        body: ListView.builder(
          itemCount: Location.getLocations().length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(Location.getLocations()[index].name),
              subtitle: Text(Location.getLocations()[index].address),
              leading: Image.network(
                Location.getLocations()[index].image,
                fit: BoxFit.cover
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationDetail(location: Location.getLocations()[index])),
                );
              },
            );
          },
        ),
      );
    }
  }
