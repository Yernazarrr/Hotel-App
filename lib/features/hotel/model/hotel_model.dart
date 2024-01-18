import 'package:equatable/equatable.dart';
import 'package:hotel_app/features/hotel/model/about_the_hotel_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hotel_model.g.dart';

@JsonSerializable()
class HotelDTO extends Equatable {
  final int id;
  final String? name;
  @JsonKey(name: "adress")
  final String? address;
  @JsonKey(name: "minimal_price")
  final int? minimalPrice;
  @JsonKey(name: "price_for_it")
  final String? priceForIt;
  final double? rating;
  @JsonKey(name: "rating_name")
  final String? ratingName;
  @JsonKey(name: "image_urls")
  final List<String>? imageUrls;
  @JsonKey(name: 'about_the_hotel')
  final AboutTheHotelDTO? aboutTheHotel;

  const HotelDTO({
    required this.id,
    this.name,
    this.address,
    this.minimalPrice,
    this.priceForIt,
    this.rating,
    this.ratingName,
    this.aboutTheHotel,
    this.imageUrls,
  });

  factory HotelDTO.fromJson(Map<String, dynamic> json) => _$HotelDTOFromJson(json);

  Map<String, dynamic> toJson() => _$HotelDTOToJson(this);

  @override
  List<Object?> get props => [
        name,
        address,
        minimalPrice,
        priceForIt,
        rating,
        ratingName,
        aboutTheHotel,
        imageUrls,
      ];
}
