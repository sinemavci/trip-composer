import 'package:flutter/material.dart';

class TripChip extends StatefulWidget {
  const TripChip({super.key});

  @override
  State<TripChip> createState() => _TripChipState();
}

class _TripChipState extends State<TripChip> {
  @override
  Widget build(BuildContext context) {
    return Chip(label: Text("chipp")
    );
  }
}