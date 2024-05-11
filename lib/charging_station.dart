// charging_station.dart
class ChargingStation {
  final String key;
  final String details;
  double cost; // New property
  int slots; // New property
  double distance; // New property
  int queue;
  ChargingStation({
    required this.key,
    required this.details,
    required this.cost,
    required this.slots,
    required this.distance,
    required this.queue,
  });

  get value => null;
}
