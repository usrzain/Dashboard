// Charging Station class

import 'package:flutter/material.dart';

class ChargingStation {
  final String id;
  final int availableSlots;
  final double cost;
  final double distance;
  final List<double> location;
  final int queue;
  final String duration;

  ChargingStation({
    required this.id,
    required this.availableSlots,
    required this.cost,
    required this.distance,
    required this.location,
    required this.queue,
    required this.duration,
  });

  factory ChargingStation.fromJson(Map<String, dynamic> json) {
    return ChargingStation(
      id: json['id'],
      availableSlots: json['available_slots'],
      cost: json['cost'],
      distance: json['distance'],
      location: List<double>.from(json['location']),
      queue: json['queue'],
      duration: json['duration'],
    );
  }
}

// Charging Station class

class chCSProvider extends ChangeNotifier {
  Map<String, dynamic> _chargingStations = {};
  Map<String, dynamic> get chargingStations => _chargingStations;
  set chargingStations(Map<String, dynamic> value) {
    _chargingStations = value;
    notifyListeners();
  }
}
