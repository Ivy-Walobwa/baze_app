import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/hostel.dart';

class FirestoreDatabase{

  final CollectionReference _hostelCollection = FirebaseFirestore.instance.collection('hostels');

  Stream<List<Hostel>> get hostels {

    final Stream<QuerySnapshot> snapshots = _hostelCollection.snapshots();

    return snapshots.map((snapshot){
      final result = snapshot.docs.map((doc) => Hostel.fromJson(doc.data())).toList();
      return result;
    });

  }
}



