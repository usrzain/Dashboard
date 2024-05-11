import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ChargingStationMenu extends StatefulWidget {
  @override
  _ChargingStationMenuState createState() => _ChargingStationMenuState();
}

class _ChargingStationMenuState extends State<ChargingStationMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  //late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    //_animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  DatabaseReference ref = FirebaseDatabase.instance.ref("Locations");

  void setValue(key, int slots, int queue) {
    ref.child("${key}").update({
      "available_slots": slots,

      "queue": queue,

      // Update the specific key with new data
    }).then((_) {
      print("Data for '${key}' updated successfully!");
    }).catchError((error) {
      print("Error updating data: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: MediaQuery.of(context).size.height, // Increase height

      color: Color(0xFF21222D),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80.0),
          buildMenuItem('Dashboard', Icons.dashboard_customize, () {
            // Handle Dashboard Click
          }),
          buildSeparator(),
          buildMenuItem('CS', Icons.map_sharp, () {
            // Handle CS Click
          }),
          buildSeparator(),
          buildMenuItem('Test Case 1', Icons.logout, () {
            final stationData = {
              // Use map literal syntax for station renaming
              'CS1': {'Available Slots': 2, 'Queue': 0},
              'CS2': {'Available Slots': 5, 'Queue': 0},
              'CS3': {'Available Slots': 0, 'Queue': 3},
              'CS4': {'Available Slots': 1, 'Queue': 0},
              'CS5': {'Available Slots': 4, 'Queue': 0},
              'CS6': {'Available Slots': 0, 'Queue': 2},
              'CS7': {'Available Slots': 3, 'Queue': 0},
              'CS8': {'Available Slots': 2, 'Queue': 0},
              'CS9': {'Available Slots': 0, 'Queue': 1},
              'CS10': {'Available Slots': 5, 'Queue': 0},
              'CS11': {'Available Slots': 1, 'Queue': 0},
              'CS12': {'Available Slots': 0, 'Queue': 4},
            };
            // Loop through station data
            for (final stationCode in stationData.keys) {
              final stationDataForCode =
                  stationData[stationCode]; // Get data for current station
              int availableSlots = stationDataForCode!['Available Slots']!;
              int queue = stationDataForCode['Queue']!;

              setValue(stationCode, availableSlots, queue);
            }
          }),
          buildSeparator(),
          buildMenuItem('Test Case 2', Icons.logout, () {
            final stationData = {
              // Use map literal syntax for station renaming
              'CS1': {'Available Slots': 1, 'Queue': 0},
              'CS2': {'Available Slots': 0, 'Queue': 5},
              'CS3': {'Available Slots': 3, 'Queue': 0},
              'CS4': {'Available Slots': 2, 'Queue': 0},
              'CS5': {'Available Slots': 0, 'Queue': 2},
              'CS6': {'Available Slots': 4, 'Queue': 0},
              'CS7': {'Available Slots': 1, 'Queue': 0},
              'CS8': {'Available Slots': 0, 'Queue': 3},
              'CS9': {'Available Slots': 5, 'Queue': 0},
              'CS10': {'Available Slots': 2, 'Queue': 0},
              'CS11': {'Available Slots': 0, 'Queue': 1},
              'CS12': {'Available Slots': 3, 'Queue': 0},
            };

// Loop through station data
            for (final stationCode in stationData.keys) {
              final stationDataForCode =
                  stationData[stationCode]; // Get data for current station

              // Access values without null checks (assuming data is valid)
              int availableSlots = stationDataForCode!['Available Slots']!;
              int queue = stationDataForCode['Queue']!;

              setValue(stationCode, availableSlots, queue);
            }
          }),
          buildSeparator(),
          buildMenuItem('Test Case 3', Icons.logout, () {
            final stationData = {
              // Use map literal syntax for station renaming
              'CS1': {'Available Slots': 0, 'Queue': 4},
              'CS2': {'Available Slots': 2, 'Queue': 0},
              'CS3': {'Available Slots': 1, 'Queue': 0},
              'CS4': {'Available Slots': 0, 'Queue': 2},
              'CS5': {'Available Slots': 3, 'Queue': 0},
              'CS6': {'Available Slots': 5, 'Queue': 0},
              'CS7': {'Available Slots': 0, 'Queue': 1},
              'CS8': {'Available Slots': 4, 'Queue': 0},
              'CS9': {'Available Slots': 2, 'Queue': 0},
              'CS10': {'Available Slots': 0, 'Queue': 3},
              'CS11': {'Available Slots': 1, 'Queue': 0},
              'CS12': {'Available Slots': 5, 'Queue': 0},
            };

// Loop through station data
            for (final stationCode in stationData.keys) {
              final stationDataForCode =
                  stationData[stationCode]; // Get data for current station

              // Access values without null checks (assuming data is valid)
              int availableSlots = stationDataForCode!['Available Slots']!;
              int queue = stationDataForCode['Queue']!;

              setValue(stationCode, availableSlots, queue);
            }
          }),
          buildSeparator(),
          buildMenuItem('Test Case 4', Icons.logout, () {
            final stationData = {
              // Use map literal syntax for station renaming
              'CS1': {'Available Slots': 3, 'Queue': 0},
              'CS2': {'Available Slots': 0, 'Queue': 6},
              'CS3': {'Available Slots': 2, 'Queue': 0},
              'CS4': {'Available Slots': 1, 'Queue': 0},
              'CS5': {'Available Slots': 0, 'Queue': 5},
              'CS6': {'Available Slots': 4, 'Queue': 0},
              'CS7': {'Available Slots': 2, 'Queue': 0},
              'CS8': {'Available Slots': 0, 'Queue': 2},
              'CS9': {'Available Slots': 5, 'Queue': 0},
              'CS10': {'Available Slots': 1, 'Queue': 0},
              'CS11': {'Available Slots': 0, 'Queue': 3},
              'CS12': {'Available Slots': 3, 'Queue': 0},
            };

// Loop through station data
            for (final stationCode in stationData.keys) {
              final stationDataForCode =
                  stationData[stationCode]; // Get data for current station

              // Access values without null checks (assuming data is valid)
              int availableSlots = stationDataForCode!['Available Slots']!;
              int queue = stationDataForCode['Queue']!;

              setValue(stationCode, availableSlots, queue);
            }
          }),
          buildSeparator(),
          buildMenuItem('Test Case 5', Icons.logout, () {
            final stationData = {
              // Use map literal syntax for station renaming
              'CS1': {'Available Slots': 0, 'Queue': 1},
              'CS2': {'Available Slots': 4, 'Queue': 0},
              'CS3': {'Available Slots': 1, 'Queue': 0},
              'CS4': {'Available Slots': 0, 'Queue': 4},
              'CS5': {'Available Slots': 2, 'Queue': 0},
              'CS6': {'Available Slots': 0, 'Queue': 6},
              'CS7': {'Available Slots': 5, 'Queue': 0},
              'CS8': {'Available Slots': 1, 'Queue': 0},
              'CS9': {'Available Slots': 0, 'Queue': 2},
              'CS10': {'Available Slots': 3, 'Queue': 0},
              'CS11': {'Available Slots': 2, 'Queue': 0},
              'CS12': {'Available Slots': 0, 'Queue': 5},
            };

// Loop through station data
            for (final stationCode in stationData.keys) {
              final stationDataForCode =
                  stationData[stationCode]; // Get data for current station

              // Access values without null checks (assuming data is valid)
              int availableSlots = stationDataForCode!['Available Slots']!;
              int queue = stationDataForCode['Queue']!;

              setValue(stationCode, availableSlots, queue);
            }
          }),
          buildSeparator(),
          buildMenuItem('Test Case 6', Icons.logout, () {
            final stationData = {
              // Use map literal syntax for station renaming
              'CS1': {'Available Slots': 2, 'Queue': 0},
              'CS2': {'Available Slots': 1, 'Queue': 0},
              'CS3': {'Available Slots': 0, 'Queue': 3},
              'CS4': {'Available Slots': 5, 'Queue': 0},
              'CS5': {'Available Slots': 0, 'Queue': 2},
              'CS6': {'Available Slots': 3, 'Queue': 0},
              'CS7': {'Available Slots': 1, 'Queue': 0},
              'CS8': {'Available Slots': 0, 'Queue': 6},
              'CS9': {'Available Slots': 4, 'Queue': 0},
              'CS10': {'Available Slots': 2, 'Queue': 0},
              'CS11': {'Available Slots': 0, 'Queue': 1},
              'CS12': {'Available Slots': 5, 'Queue': 0},
            };

// Loop through station data
            for (final stationCode in stationData.keys) {
              final stationDataForCode =
                  stationData[stationCode]; // Get data for current station

              // Access values without null checks (assuming data is valid)
              int availableSlots = stationDataForCode!['Available Slots']!;
              int queue = stationDataForCode['Queue']!;

              setValue(stationCode, availableSlots, queue);
            }
          }),
          buildSeparator(),
          buildMenuItem('Test Case 7', Icons.logout, () {
            final stationData = {
              // Use map literal syntax for station renaming
              'CS1': {'Available Slots': 1, 'Queue': 0},
              'CS2': {'Available Slots': 0, 'Queue': 5},
              'CS3': {'Available Slots': 4, 'Queue': 0},
              'CS4': {'Available Slots': 2, 'Queue': 0},
              'CS5': {'Available Slots': 0, 'Queue': 4},
              'CS6': {'Available Slots': 1, 'Queue': 0},
              'CS7': {'Available Slots': 3, 'Queue': 0},
              'CS8': {'Available Slots': 0, 'Queue': 2},
              'CS9': {'Available Slots': 5, 'Queue': 0},
              'CS10': {'Available Slots': 0, 'Queue': 3},
              'CS11': {'Available Slots': 2, 'Queue': 0},
              'CS12': {'Available Slots': 1, 'Queue': 0},
            };

// Loop through station data
            for (final stationCode in stationData.keys) {
              final stationDataForCode =
                  stationData[stationCode]; // Get data for current station

              // Access values without null checks (assuming data is valid)
              int availableSlots = stationDataForCode!['Available Slots']!;
              int queue = stationDataForCode['Queue']!;

              setValue(stationCode, availableSlots, queue);
            }
          }),
          buildSeparator(),
          buildMenuItem('Test Case 8', Icons.logout, () {
            final stationData = {
              // Use map literal syntax for station renaming
              'CS1': {'Available Slots': 0, 'Queue': 2},
              'CS2': {'Available Slots': 3, 'Queue': 0},
              'CS3': {'Available Slots': 1, 'Queue': 0},
              'CS4': {'Available Slots': 0, 'Queue': 6},
              'CS5': {'Available Slots': 5, 'Queue': 0},
              'CS6': {'Available Slots': 2, 'Queue': 0},
              'CS7': {'Available Slots': 0, 'Queue': 1},
              'CS8': {'Available Slots': 4, 'Queue': 0},
              'CS9': {'Available Slots': 1, 'Queue': 0},
              'CS10': {'Available Slots': 0, 'Queue': 5},
              'CS11': {'Available Slots': 3, 'Queue': 0},
              'CS12': {'Available Slots': 2, 'Queue': 0},
            };

// Loop through station data
            for (final stationCode in stationData.keys) {
              final stationDataForCode =
                  stationData[stationCode]; // Get data for current station

              // Access values without null checks (assuming data is valid)
              int availableSlots = stationDataForCode!['Available Slots']!;
              int queue = stationDataForCode['Queue']!;

              setValue(stationCode, availableSlots, queue);
            }
          }),
        ],
      ),
    );
  }

  Widget buildSeparator() {
    return Container(
      height: 1,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
    );
  }

  Widget buildMenuItem(String title, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), // Add curved padding
          color: Colors.transparent, // Transparent background
          border: Border(
            left: BorderSide(
              color: Colors.transparent,
              width: 4.0, // Highlighter width
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.grey[50],
              ),
              SizedBox(width: 16.0),
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey[50],
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  // Add your preferred font family here
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
