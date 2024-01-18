import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'about_the_hotel_dto.g.dart';

@JsonSerializable()
class AboutTheHotelDTO extends Equatable {
  final String? description;
  final List<String>? peculiarities;

  const AboutTheHotelDTO({
    this.description,
    this.peculiarities,
  });

  factory AboutTheHotelDTO.fromJson(Map<String, dynamic> json) => _$AboutTheHotelDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AboutTheHotelDTOToJson(this);

  @override
  List<Object?> get props => [
        description,
        peculiarities,
      ];
}
