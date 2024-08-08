import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppRatingRecord extends FirestoreRecord {
  AppRatingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "usertype" field.
  String? _usertype;
  String get usertype => _usertype ?? '';
  bool hasUsertype() => _usertype != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "suggestions" field.
  String? _suggestions;
  String get suggestions => _suggestions ?? '';
  bool hasSuggestions() => _suggestions != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _usertype = snapshotData['usertype'] as String?;
    _rating = castToType<int>(snapshotData['rating']);
    _suggestions = snapshotData['suggestions'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('app_rating');

  static Stream<AppRatingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppRatingRecord.fromSnapshot(s));

  static Future<AppRatingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppRatingRecord.fromSnapshot(s));

  static AppRatingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppRatingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppRatingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppRatingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppRatingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppRatingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppRatingRecordData({
  String? email,
  String? usertype,
  int? rating,
  String? suggestions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'usertype': usertype,
      'rating': rating,
      'suggestions': suggestions,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppRatingRecordDocumentEquality implements Equality<AppRatingRecord> {
  const AppRatingRecordDocumentEquality();

  @override
  bool equals(AppRatingRecord? e1, AppRatingRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.usertype == e2?.usertype &&
        e1?.rating == e2?.rating &&
        e1?.suggestions == e2?.suggestions;
  }

  @override
  int hash(AppRatingRecord? e) => const ListEquality()
      .hash([e?.email, e?.usertype, e?.rating, e?.suggestions]);

  @override
  bool isValidKey(Object? o) => o is AppRatingRecord;
}
