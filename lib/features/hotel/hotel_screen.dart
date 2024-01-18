import 'package:flutter/material.dart';
import 'package:hotel_app/di.dart';
import 'package:hotel_app/features/hotel/model/hotel_model.dart';
import 'package:hotel_app/repositories/hotel_repository.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotel'),
      ),
      body: Center(
        child: FutureBuilder<HotelDTO?>(
          future: sl<HotelRepository>().getHotelList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final hotel = snapshot.data as HotelDTO;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hotel Name: ${hotel.name}'),
                    const SizedBox(height: 8),
                    Text('Hotel Address: ${hotel.address}'),
                    const SizedBox(height: 8),
                    Text('Hotel Minimal Price: ${hotel.minimalPrice}'),
                    const SizedBox(height: 8),
                    Text('Price for it: ${hotel.priceForIt}'),
                    const SizedBox(height: 8),
                    Text('Rating name: ${hotel.ratingName}'),
                    const SizedBox(height: 8),
                    // Text(snapshot.data.toString()),

                    if (hotel.imageUrls != null)
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.network(hotel.imageUrls![index]),
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(height: 8),
                          itemCount: hotel.imageUrls!.length,
                        ),
                      ),
                  ],
                ),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
