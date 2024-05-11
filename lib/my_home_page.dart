// my_home_page.dart
import 'package:flutter/material.dart';
import 'charging_station_card.dart';
import 'charging_station.dart';
import 'charging_station_menu.dart';
import 'package:dashboard/rightsideData.dart';

// my_home_page.dart
ValueNotifier<ChargingStation?> selectedStation =
    ValueNotifier<ChargingStation?>(null);

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ChargingStation> chargingStations = [
    ChargingStation(
        key: 'CS1',
        details: 'Details for Station 1',
        cost: 10.0,
        slots: 5,
        distance: 3.5,
        queue: 2),
    ChargingStation(
        key: 'CS2',
        details: 'Details for Station 2',
        cost: 12.0,
        slots: 3,
        distance: 4.2,
        queue: 2),
    ChargingStation(
        key: 'CS3',
        details: 'Details for Station 3',
        cost: 8.0,
        slots: 8,
        distance: 2.8,
        queue: 2),
    // Add 8 more stations
    ChargingStation(
        key: 'CS4',
        details: 'Details for Station 4',
        cost: 9.0,
        slots: 6,
        distance: 5.0,
        queue: 2),
    ChargingStation(
        key: 'CS5',
        details: 'Details for Station 5',
        cost: 11.0,
        slots: 4,
        distance: 3.2,
        queue: 2),
    ChargingStation(
        key: 'CS6',
        details: 'Details for Station 6',
        cost: 7.0,
        slots: 7,
        distance: 4.5,
        queue: 2),
    ChargingStation(
        key: 'CS7',
        details: 'Details for Station 7',
        cost: 13.0,
        slots: 2,
        distance: 6.2,
        queue: 2),
    ChargingStation(
        key: 'CS8',
        details: 'Details for Station 8',
        cost: 8.5,
        slots: 5,
        distance: 3.8,
        queue: 2),
    ChargingStation(
        key: 'CS9',
        details: 'Details for Station 9',
        cost: 10.5,
        slots: 3,
        distance: 4.8,
        queue: 2),
    ChargingStation(
        key: 'CS10',
        details: 'Details for Station 10',
        cost: 7.5,
        slots: 6,
        distance: 3.0,
        queue: 2),
    ChargingStation(
        key: 'CS11',
        details: 'Details for Station 1',
        cost: 10.0,
        slots: 5,
        distance: 3.5,
        queue: 2),
    ChargingStation(
        key: 'CS12',
        details: 'Details for Station 1',
        cost: 10.0,
        slots: 5,
        distance: 3.5,
        queue: 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charging Stations'),
      ),
      backgroundColor: Color(0xFF171821),
      body: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: ChargingStationMenu()),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Charging Stations in Karachi',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Color(0xFF21222D),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onChanged: (value) {
                        // Implement search functionality here
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 0.1,
                        mainAxisSpacing: 0.1,
                        childAspectRatio: 2,
                      ),
                      itemCount: chargingStations.length,
                      itemBuilder: (context, index) {
                        final chargingStation = chargingStations[index];
                        return ChargingStationCard(chargingStation);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 450.0,
            color: Color(0xFF21222D),
            child: RightsideData(),
          ),
        ],
      ),
    );
  }
}
