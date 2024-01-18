import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hotel_app/di.dart';
import 'package:hotel_app/features/hotel/model/hotel_model.dart';

class HotelRepository {
  Future<HotelDTO?> getHotelList() async {
    try {
      final response = await sl<Dio>().get(
        'https://run.mocky.io/v3/75000507-da9a-43f8-a618-df698ea7176d',
      );

      final hotel = HotelDTO.fromJson(response.data as Map<String, dynamic>);

      return hotel;
    } catch (e) {
      log('catch $e');
      throw Exception(e);
    }
  }
}

/* 
  @override
  Future<List<ProductDTO>> getMyAds({
    required int page,
    required int status,
  }) async {
    try {
      final response = await dio.get(
        EndPoints.myProducts,
        queryParameters: {
          "page": page,
          "status": status,
        },
      );

      return (response.data as List).map((x) => ProductDTO.fromJson(x as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(message: e.message);
    }
  }
*/