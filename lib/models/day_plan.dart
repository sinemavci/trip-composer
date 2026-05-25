import 'package:trip_composer/models/activity.dart';

class DayPlan {
  final int day;
  final String theme;
  final List<Activity> activities;

  const DayPlan({
    required this.day,
    required this.theme,
    required this.activities,
  });

  factory DayPlan.fromJson(Map<String, dynamic>? json) {
    return DayPlan(
      day: json?['day'] as int? ?? 1,
      theme: json?['theme']?.toString() ?? 'General Exploration',
      activities:
      (json?['activities'] as List?)
          ?.map((e) => Activity.fromJson(
          e as Map<String, dynamic>?))
          .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() => {
    'day': day,
    'theme': theme,
    'activities':
    activities.map((e) => e.toJson()).toList(),
  };
}