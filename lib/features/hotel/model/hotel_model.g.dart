// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotelDTO _$HotelDTOFromJson(Map<String, dynamic> json) => HotelDTO(
      id: json['id'] as int,
      name: json['name'] as String?,
      address: json['adress'] as String?,
      minimalPrice: json['minimal_price'] as int?,
      priceForIt: json['price_for_it'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      ratingName: json['rating_name'] as String?,
      aboutTheHotel: json['about_the_hotel'] == null
          ? null
          : AboutTheHotelDTO.fromJson(
              json['about_the_hotel'] as Map<String, dynamic>),
      imageUrls: (json['image_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$HotelDTOToJson(HotelDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adress': instance.address,
      'minimal_price': instance.minimalPrice,
      'price_for_it': instance.priceForIt,
      'rating': instance.rating,
      'rating_name': instance.ratingName,
      'image_urls': instance.imageUrls,
      'about_the_hotel': instance.aboutTheHotel,
    };
