// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_the_hotel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AboutTheHotelDTO _$AboutTheHotelDTOFromJson(Map<String, dynamic> json) =>
    AboutTheHotelDTO(
      description: json['description'] as String?,
      peculiarities: (json['peculiarities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AboutTheHotelDTOToJson(AboutTheHotelDTO instance) =>
    <String, dynamic>{
      'description': instance.description,
      'peculiarities': instance.peculiarities,
    };
