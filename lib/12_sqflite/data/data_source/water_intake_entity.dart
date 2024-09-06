class WaterIntakeEntity {
  int? id;
  String timestamp;
  int value;

  WaterIntakeEntity({
    this.id,
    required this.timestamp,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'timestamp': timestamp,
      'value': value,
    };
  }

  factory WaterIntakeEntity.fromMap(Map<String, dynamic> map) {
    return WaterIntakeEntity(
      id: map['_id'] as int,
      timestamp: map['timestamp'] as String,
      value: map['value'] as int,
    );
  }
}