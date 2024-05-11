import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/charging_station.dart';
import 'package:dashboard/my_home_page.dart';
//import 'charging_station_card.dart';

class RightsideData extends StatefulWidget {
  @override
  _RightsideDataState createState() => _RightsideDataState();
}

class _RightsideDataState extends State<RightsideData> {
  late TextEditingController _costController;
  late TextEditingController _slotsController;
  late TextEditingController _queueController;

  @override
  void initState() {
    super.initState();
    _costController = TextEditingController();
    _slotsController = TextEditingController();
    _queueController = TextEditingController();
  }

  @override
  void dispose() {
    _costController.dispose();
    _slotsController.dispose();
    _queueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ChargingStation?>(
      valueListenable: selectedStation,
      builder: (context, selectedStation, _) {
        if (selectedStation != null) {
          _costController.text = selectedStation.cost.toString();
          _slotsController.text = selectedStation.slots.toString();
          _queueController.text = selectedStation.queue.toString();
        }
        return selectedStation != null
            ? Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Charging Station ${selectedStation.key} Data',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        controller: _costController,
                        decoration: InputDecoration(
                          labelText: 'Cost/Kwh',
                          labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.attach_money,
                            color: Colors.green,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                      ),
                      TextFormField(
                        controller: _slotsController,
                        decoration: InputDecoration(
                          labelText: 'Available Slots',
                          labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.car_repair,
                            color: Colors.blue,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                      ),
                      TextFormField(
                        controller: _queueController,
                        decoration: InputDecoration(
                          labelText: 'Queue',
                          labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.queue,
                            color: Colors.yellow,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedStation.cost =
                                    double.parse(_costController.text);
                                selectedStation.slots =
                                    int.parse(_slotsController.text);
                                selectedStation.queue =
                                    int.parse(_queueController.text);

                                print(selectedStation.key);
                                print(selectedStation.cost);
                                print(selectedStation.slots);
                                print(selectedStation.queue);
                                DatabaseReference ref =
                                    FirebaseDatabase.instance.ref("Locations");
                                ref
                                    .child("${selectedStation.key}")
                                    .once()
                                    .then((snapshot) {
                                  if (snapshot.snapshot.exists) {
                                    // Access the data within the snapshot
                                    print(snapshot.snapshot
                                        .value); // This will print the actual data retrieved
                                  } else {
                                    print(
                                        "No data found for the selected station.");
                                  }
                                });

                                ref.child("${selectedStation.key}").update({
                                  "available_slots": selectedStation.slots,
                                  "cost": selectedStation.cost,
                                  "queue": selectedStation.queue,

                                  // Update the specific key with new data
                                }).then((_) {
                                  print(
                                      "Data for '${selectedStation.key}' updated successfully!");
                                }).catchError((error) {
                                  print("Error updating data: $error");
                                });

                                // ref.child("${selectedStation.key}").update({
                                //   "cost": selectedStation.cost,
                                //   "available_slots": selectedStation.slots,
                                //   "queue": selectedStation.slots,
                                // });
                                // ref.update(value)
                              });
                            },
                            child: Text(
                              'Save',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _costController.text =
                                    selectedStation.cost.toString();
                                _slotsController.text =
                                    selectedStation.slots.toString();
                                _queueController.text =
                                    selectedStation.queue.toString();
                              });
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : Container(); // Empty container when no station is selected
      },
    );
  }
}
