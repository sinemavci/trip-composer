import 'package:flutter/material.dart';
import 'package:trip_composer/components/trip_chip.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        // appBar: CustomAppBar(appBarOptions: widget.appBarOptions),
        body: Container(
          child: Column(
            children: [
              TripChip()
            ],
          ),
        )
    );
  }
}