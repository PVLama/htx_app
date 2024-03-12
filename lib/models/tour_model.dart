import 'dart:ui';

class Tour {
  final Color image;
  final String tourName;
  final String address;
  final String evaluation;
  final String comment;

  Tour({
    required this.image,
    required this.tourName,
    required this.address,
    required this.evaluation,
    required this.comment,
  });

  factory Tour.fromJson(Map<String, dynamic> json) {
    return Tour(
      tourName: json['tourName'],
      comment: json['comment'],
      evaluation: json['evaluation'],
      address: json['address'],
      image: json['image'],
    );
  }

}
