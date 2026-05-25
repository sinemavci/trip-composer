class TripRequest {
  final String destination;
  final double budget;
  final int duration;
  final List<String> interests;

  const TripRequest({
    required this.destination,
    required this.budget,
    required this.duration,
    required this.interests,
  });

  Map<String, dynamic> toJson() {
    return {
      'destination': destination,
      'budget': budget,
      'duration': duration,
      'interests': interests,
    };
  }

  factory TripRequest.fromJson(Map<String, dynamic>? json) {
    return TripRequest(
      destination: json?['destination']?.toString() ?? '',
      budget: (json?['budget'] as num?)?.toDouble() ?? 0.0,
      duration: json?['duration'] as int? ?? 1,
      interests: (json?['interests'] as List?)
          ?.map((e) => e.toString())
          .toList() ??
          [],
    );
  }
}