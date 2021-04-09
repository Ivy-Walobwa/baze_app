import 'package:flutter/material.dart';
import '../services/firestore_database.dart';
import '../models/hostel.dart';

class HostelProvider extends ChangeNotifier {
  int _selectedHostelIdx = 0;
  var _hostelCategories = [
    {
      'title': 'Hostels on a budget',
      'subtitle': 'The cheapest hostels around campus.',
    },
    {
      'title': 'Clean and secure',
      'subtitle': 'Simple pleasures that go a long way.',
    },
    {
      'title': 'Nearest to Campus',
      'subtitle': 'Don’t be too away from home.',
    },
    {
      'title': 'Best Doubles',
      'subtitle': 'Cool roomies, cool digs.',
    },
  ];

  List get hostelCategories {
    return _hostelCategories;
  }

  Stream<List<Hostel>> get allHostels {
    return FirestoreDatabase().readHostels();
  }

  int get selectedHostelIdx {
    return _selectedHostelIdx;
  }

  void setHostelIdx(int value) {
    _selectedHostelIdx = value;
    notifyListeners();
  }

  List<List<SingleReview>> groupReviews(Hostel hostel) {
    List<SingleReview> reviews = hostel.reviews.reviews;
    List<SingleReview> positiveReview = [];
    List<SingleReview> negativeReview = [];

    reviews.forEach((element) {
      if (element.reviewType == Review.positive) positiveReview.add(element);
      if (element.reviewType == Review.negative) negativeReview.add(element);
    });

    return [positiveReview, negativeReview];
  }
}
