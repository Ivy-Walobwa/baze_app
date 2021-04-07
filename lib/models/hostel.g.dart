// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hostel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hostel _$HostelFromJson(Map<String, dynamic> json) {
  return Hostel(
    name: json['name'] as String,
    rent: json['rent'] as String,
    image: json['image'] as String,
    roomsLeft: json['roomsLeft'] as String,
    totalRooms: json['totalRooms'] as String,
    rating: json['rating'] as String,
    about: json['about'] as String,
    reviews: json['reviews'] == null
        ? null
        : HostelReviews.fromJson(json['reviews'] as Map<String, dynamic>),
    details: (json['details'] as List)
        ?.map((e) =>
            e == null ? null : HostelDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contacts: (json['contacts'] as List)
        ?.map((e) => e == null
            ? null
            : HostelContact.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    location: json['location'] == null
        ? null
        : HostelLocation.fromJson(json['location'] as Map<String, dynamic>),
    socialHandles: (json['socialHandles'] as List)
        ?.map((e) =>
            e == null ? null : SocialHandle.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    rentingNote:
        (json['rentingNote'] as List)?.map((e) => e as String)?.toList(),
    gender: _$enumDecodeNullable(_$GenderAcceptedEnumMap, json['gender']),
  );
}

Map<String, dynamic> _$HostelToJson(Hostel instance) => <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'rent': instance.rent,
      'totalRooms': instance.totalRooms,
      'roomsLeft': instance.roomsLeft,
      'image': instance.image,
      'about': instance.about,
      'reviews': instance.reviews,
      'socialHandles': instance.socialHandles,
      'contacts': instance.contacts,
      'details': instance.details,
      'location': instance.location,
      'rentingNote': instance.rentingNote,
      'gender': _$GenderAcceptedEnumMap[instance.gender],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$GenderAcceptedEnumMap = {
  GenderAccepted.boys: 'boys',
  GenderAccepted.girls: 'girls',
  GenderAccepted.both: 'both',
};

SingleReview _$SingleReviewFromJson(Map<String, dynamic> json) {
  return SingleReview(
    rating: json['rating'] as String,
    date: json['date'] as String,
    review: json['review'] as String,
    reviewerName: json['reviewerName'] as String,
    hotelName: json['hotelName'] as String,
    reviewType: _$enumDecodeNullable(_$ReviewEnumMap, json['reviewType']),
    reviewerImage: json['reviewerImage'] as String,
  );
}

Map<String, dynamic> _$SingleReviewToJson(SingleReview instance) =>
    <String, dynamic>{
      'reviewerName': instance.reviewerName,
      'review': instance.review,
      'date': instance.date,
      'rating': instance.rating,
      'hotelName': instance.hotelName,
      'reviewType': _$ReviewEnumMap[instance.reviewType],
      'reviewerImage': instance.reviewerImage,
    };

const _$ReviewEnumMap = {
  Review.positive: 'positive',
  Review.negative: 'negative',
};

HostelReviews _$HostelReviewsFromJson(Map<String, dynamic> json) {
  return HostelReviews(
    reviews: (json['reviews'] as List)
        ?.map((e) =>
            e == null ? null : SingleReview.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    averageRating: json['averageRating'] as String,
    numberOfReviews: json['numberOfReviews'] as String,
  );
}

Map<String, dynamic> _$HostelReviewsToJson(HostelReviews instance) =>
    <String, dynamic>{
      'reviews': instance.reviews,
      'numberOfReviews': instance.numberOfReviews,
      'averageRating': instance.averageRating,
    };

HostelContact _$HostelContactFromJson(Map<String, dynamic> json) {
  return HostelContact(
    contactName: json['contactName'] as String,
    contactNumber: json['contactNumber'] as String,
    contactTitle: json['contactTitle'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$HostelContactToJson(HostelContact instance) =>
    <String, dynamic>{
      'contactName': instance.contactName,
      'contactTitle': instance.contactTitle,
      'contactNumber': instance.contactNumber,
      'image': instance.image,
    };

HostelDetail _$HostelDetailFromJson(Map<String, dynamic> json) {
  return HostelDetail(
    available: json['available'] as bool,
    detail: json['detail'] as String,
  );
}

Map<String, dynamic> _$HostelDetailToJson(HostelDetail instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'available': instance.available,
    };

SocialHandle _$SocialHandleFromJson(Map<String, dynamic> json) {
  return SocialHandle(
    link: json['link'] as String,
    platformName: json['platformName'] as String,
  );
}

Map<String, dynamic> _$SocialHandleToJson(SocialHandle instance) =>
    <String, dynamic>{
      'platformName': instance.platformName,
      'link': instance.link,
    };

HostelLocation _$HostelLocationFromJson(Map<String, dynamic> json) {
  return HostelLocation(
    location: json['location'] as String,
    distanceToCampus: json['distanceToCampus'] as String,
  );
}

Map<String, dynamic> _$HostelLocationToJson(HostelLocation instance) =>
    <String, dynamic>{
      'location': instance.location,
      'distanceToCampus': instance.distanceToCampus,
    };
