class Activity {
  final String title;
  final String location;
  final String time;
  final String description;
  final double estimatedCost;

  const Activity({
    required this.title,
    required this.location,
    required this.time,
    required this.description,
    required this.estimatedCost,
  });

  factory Activity.fromJson(Map<String, dynamic>? json) {
    return Activity(
      title: json?['title']?.toString() ?? 'Unnamed Activity',
      location: json?['location']?.toString() ?? 'Unknown Location',
      time: json?['time']?.toString() ?? 'Flexible',
      description: json?['description']?.toString() ?? '',
      estimatedCost:
      (json?['estimatedCost'] as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() => {
    'title': title,
    'location': location,
    'time': time,
    'description': description,
    'estimatedCost': estimatedCost,
  };
}