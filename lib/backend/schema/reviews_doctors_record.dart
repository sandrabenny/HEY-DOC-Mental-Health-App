import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsDoctorsRecord extends FirestoreRecord {
  ReviewsDoctorsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "doctor_name" field.
  String? _doctorName;
  String get doctorName => _doctorName ?? '';
  bool hasDoctorName() => _doctorName != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "rating_got" field.
  int? _ratingGot;
  int get ratingGot => _ratingGot ?? 0;
  bool hasRatingGot() => _ratingGot != null;

  // "feedback_got" field.
  String? _feedbackGot;
  String get feedbackGot => _feedbackGot ?? '';
  bool hasFeedbackGot() => _feedbackGot != null;

  void _initializeFields() {
    _doctorName = snapshotData['doctor_name'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _ratingGot = castToType<int>(snapshotData['rating_got']);
    _feedbackGot = snapshotData['feedback_got'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews_doctors');

  static Stream<ReviewsDoctorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsDoctorsRecord.fromSnapshot(s));

  static Future<ReviewsDoctorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsDoctorsRecord.fromSnapshot(s));

  static ReviewsDoctorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsDoctorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsDoctorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsDoctorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsDoctorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsDoctorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsDoctorsRecordData({
  String? doctorName,
  String? userName,
  int? ratingGot,
  String? feedbackGot,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctor_name': doctorName,
      'user_name': userName,
      'rating_got': ratingGot,
      'feedback_got': feedbackGot,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsDoctorsRecordDocumentEquality
    implements Equality<ReviewsDoctorsRecord> {
  const ReviewsDoctorsRecordDocumentEquality();

  @override
  bool equals(ReviewsDoctorsRecord? e1, ReviewsDoctorsRecord? e2) {
    return e1?.doctorName == e2?.doctorName &&
        e1?.userName == e2?.userName &&
        e1?.ratingGot == e2?.ratingGot &&
        e1?.feedbackGot == e2?.feedbackGot;
  }

  @override
  int hash(ReviewsDoctorsRecord? e) => const ListEquality()
      .hash([e?.doctorName, e?.userName, e?.ratingGot, e?.feedbackGot]);

  @override
  bool isValidKey(Object? o) => o is ReviewsDoctorsRecord;
}
