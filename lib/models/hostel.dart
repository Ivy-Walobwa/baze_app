import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
part 'hostel.g.dart';

@JsonSerializable(explicitToJson: true)
class Hostel {
  String name;
  String rating;
  String rent;
  String totalRooms;
  String roomsLeft;
  String image;
  String about;
  HostelReviews reviews;
  List<SocialHandle> socialHandles;
  List<HostelContact> contacts;
  List<HostelDetail> details; //this
  HostelLocation location;
  List<String> rentingNote;
  GenderAccepted gender;

  Hostel({
    @required this.name,
    @required this.rent,
    @required this.image,
    this.roomsLeft,
    this.totalRooms,
    this.rating,
    this.about,
    this.reviews,
    this.details,
    this.contacts,
    this.location,
    this.socialHandles,
    this.rentingNote,
    this.gender,
  });

  factory Hostel.fromJson(Map<String, dynamic> json) => _$HostelFromJson(json);
  Map<String, dynamic> toJson() => _$HostelToJson(this);

}

@JsonSerializable(explicitToJson: true)
class SingleReview {
  String reviewerName;
  String review;
  String date;
  String rating;
  String hotelName;
  Review reviewType;
  String reviewerImage;

  SingleReview(
      {@required this.rating,
      @required this.date,
      @required this.review,
      @required this.reviewerName,
      @required this.hotelName,
      this.reviewType, this.reviewerImage});

  factory SingleReview.fromJson(Map<String, dynamic> json) => _$SingleReviewFromJson(json);
  Map<String, dynamic> toJson() => _$SingleReviewToJson(this);

}

@JsonSerializable(explicitToJson: true)
class HostelReviews {
  List<SingleReview> reviews;
  String numberOfReviews;
  String averageRating;

  HostelReviews(
      {@required this.reviews, this.averageRating, this.numberOfReviews});

  factory HostelReviews.fromJson(Map<String, dynamic> json) => _$HostelReviewsFromJson(json);
  Map<String, dynamic> toJson() => _$HostelReviewsToJson(this);
}

@JsonSerializable()
class HostelContact {
  String contactName;
  String contactTitle;
  String contactNumber;
  String image;

  HostelContact({
    @required this.contactName,
    @required this.contactNumber,
    @required this.contactTitle,
    this.image,
  });
  factory HostelContact.fromJson(Map<String, dynamic> json) => _$HostelContactFromJson(json);
  Map<String, dynamic> toJson() => _$HostelContactToJson(this);
}

@JsonSerializable()
class HostelDetail {
  String detail;
  bool available;

  HostelDetail({@required this.available, @required this.detail});

  factory HostelDetail.fromJson(Map<String, dynamic> json) => _$HostelDetailFromJson(json);
  Map<String, dynamic> toJson() => _$HostelDetailToJson(this);
}

enum Review { positive, negative }
enum GenderAccepted { boys, girls, both }

@JsonSerializable()
class SocialHandle {
  String platformName;
  String link;

  SocialHandle({@required this.link, @required this.platformName});
  factory SocialHandle.fromJson(Map<String, dynamic> json) => _$SocialHandleFromJson(json);
  Map<String, dynamic> toJson() => _$SocialHandleToJson(this);
}

@JsonSerializable()
class HostelLocation {
  String location;
  String distanceToCampus;

  HostelLocation({@required this.location, this.distanceToCampus});

  factory HostelLocation.fromJson(Map<String, dynamic> json) => _$HostelLocationFromJson(json);
  Map<String, dynamic> toJson() => _$HostelLocationToJson(this);
}
