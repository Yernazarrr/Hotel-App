import 'package:flutter/material.dart';
import 'package:hotel_app/di.dart';
import 'package:hotel_app/features/hotel/hotel_screen.dart';

Future<void> main() async {
  await initLocator();
  
  runApp(const HotelApp());
}

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HotelScreen(),
    );
  }
}
