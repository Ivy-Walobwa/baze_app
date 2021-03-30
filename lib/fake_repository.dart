import 'models/hostel.dart';

List<Hostel> hostelsAvailable = [
  Hostel(
    name: 'Picana Hostel',
    rent: '15,000',
    rating: '4.7',
    roomsLeft: '2',
    image: 'assets/picana.png',
  ),
  Hostel(
      name: 'St. Francis Hostel',
      rent: '18,000',
      rating: '4.7',
      roomsLeft: '0',
      image: 'assets/francis.png'),
  Hostel(
    name: 'Alegro Hostel',
    rent: '10,000',
    rating: '4.6',
    roomsLeft: '1',
    image: 'assets/alegro.png',
    reviews: HostelReviews(
        averageRating: '4.6',
        reviews: [
          SingleReview(
              rating: '5',
              date: '11/12/2020',
              review:
                  'This crib is tight! The staff are pretty kind and competent.Plus, they clean your room every week, and free pizzas at the end of every semester, cool!',
              reviewerName: 'Jones Safari',
              hotelName: 'Alegro Hostel',
              reviewerImage: 'assets/reviewer.png',
              reviewType: Review.positive),
          SingleReview(
              rating: '5',
              date: '13/01/2021',
              review:
                  'The terms of paying rent are flexible,and the fact that the road to and from the hostel is tarmacked is awesome.',
              reviewerName: 'Sam Lusaka',
              hotelName: 'Alegro Hostel',
              reviewType: Review.positive,
              reviewerImage: 'assets/reviewer2.png')
        ],
        numberOfReviews: '1,132'),
    location: HostelLocation(
        location: 'Opposite Surqal Moaque,Fourth Avenue Road',
        distanceToCampus: '6-9 km'),
    socialHandles: [
      SocialHandle(link: '', platformName: 'Facebook'),
      SocialHandle(link: '', platformName: 'Messenger'),
      SocialHandle(link: '', platformName: 'Instagram'),
      SocialHandle(link: '', platformName: 'Gmail',),
      SocialHandle(link: 'www.alegrohostel.co.ke', platformName: 'website',),
    ],
    gender: GenderAccepted.boys,
    about:
        'We aim to provide comfy, serene and affordable space for our clients to stay while they are studying',
    contacts: [
      HostelContact(
          contactName: 'Maurice Muhove',
          contactTitle: 'Caretaker',
          contactNumber: '0702020202',
          image: 'assets/caretaker.png'),
      HostelContact(
          contactName: 'Chebet Doris',
          contactTitle: 'Landlady',
          contactNumber: '0702020202',
          image: 'assets/landlord.png'),
    ],
    details: [
      HostelDetail(available: true, detail: 'Single Room'),
      HostelDetail(available: true, detail: 'Roomie accomodation'),
      HostelDetail(available: true, detail: '24/7 security'),
      HostelDetail(available: false, detail: 'Free WIFI and DSTV'),
      HostelDetail(available: true, detail: 'Private Kitchen'),
      HostelDetail(available: true, detail: 'Personal toilet and hot shower'),
      HostelDetail(available: false, detail: 'Gym and common area'),
      HostelDetail(
          available: true,
          detail: 'Rent inclusive of meals, utilities and water'),
    ],
    rentingNote: [
      'Rent to be paid by 30th of every month',
          'Deposit of 8,000 is included in the rent amount above, hence the amount paid in the following months will be 4000 per month',
    ],
  ),
];


List<List<SingleReview>> groupReviews(String hotelName,){
  Hostel hostel = hostelsAvailable.firstWhere((element) => element.name == hotelName,orElse: () => null);
  List <SingleReview> reviews = hostel.reviews.reviews;
  List <SingleReview> positiveReview = [];
  List <SingleReview> negativeReview = [];


  reviews.forEach((element) {
    if(element.reviewType == Review.positive)  positiveReview.add(element);
    if(element.reviewType == Review.negative)  negativeReview.add(element);

  });

  return [positiveReview, negativeReview];

}