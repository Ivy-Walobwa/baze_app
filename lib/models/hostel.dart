import 'package:flutter/cupertino.dart';

// THIS IS JUST A DUMMY MODEL

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
}

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

}

class HostelReviews {
  List<SingleReview> reviews;
  String numberOfReviews;
  String averageRating;

  HostelReviews(
      {@required this.reviews, this.averageRating, this.numberOfReviews});
}

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
}

class HostelDetail {
  String detail;
  bool available;

  HostelDetail({@required this.available, @required this.detail});
}

enum Review { positive, negative }
enum GenderAccepted { boys, girls, both }

class SocialHandle {
  String platformName;
  String link;

  SocialHandle({@required this.link, @required this.platformName});
}

class HostelLocation {
  String location;
  String distanceToCampus;

  HostelLocation({@required this.location, this.distanceToCampus});
}
