import 'package:equatable/equatable.dart';
import 'package:jelajah/domain/entity/place.dart';
import 'package:jelajah/domain/entity/plan.dart';

class CityDetailModel extends Equatable {
  final String id;
  final String name;
  final String icon;
  final String description;
  final String coverImage;
  final List<Plan> planList;
  final List<Place> placeList;

  CityDetailModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.description,
    required this.coverImage,
    required this.planList,
    required this.placeList,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        icon,
        description,
        coverImage,
        planList,
        placeList,
      ];
}
