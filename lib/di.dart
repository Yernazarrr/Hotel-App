import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_app/repositories/hotel_repository.dart';

final sl = GetIt.instance;

Future<void> initLocator() async {
  sl.registerLazySingleton(() => Dio());

  sl.registerLazySingleton(() => HotelRepository());
}
