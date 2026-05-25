import 'package:trip_composer/models/day_plan.dart';

class TripItinerary {
  final String destination;
  final String summary;
  final double totalEstimatedCost;
  final List<DayPlan> days;
  final List<String> tips;

  const TripItinerary({
    required this.destination,
    required this.summary,
    required this.totalEstimatedCost,
    required this.days,
    required this.tips,
  });

  factory TripItinerary.fromJson(Map<String, dynamic>? json) {
    final rawDays = json?['days'];
    final rawTips = json?['tips'];

    return TripItinerary(
      destination:
      json?['destination']?.toString() ?? 'Unknown Destination',

      summary: json?['summary']?.toString() ??
          'No itinerary summary available.',

      totalEstimatedCost:
      (json?['totalEstimatedCost'] as num?)?.toDouble() ??
          0.0,

      days: rawDays is List
          ? rawDays
          .map((e) => DayPlan.fromJson(
          e as Map<String, dynamic>?))
          .toList()
          : [],

      tips: rawTips is List
          ? rawTips.map((e) => e.toString()).toList()
          : [],
    );
  }

  Map<String, dynamic> toJson() => {
    'destination': destination,
    'summary': summary,
    'totalEstimatedCost': totalEstimatedCost,
    'days': days.map((e) => e.toJson()).toList(),
    'tips': tips,
  };
}