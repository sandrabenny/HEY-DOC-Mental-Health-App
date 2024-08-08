import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsPsychologyStudentRecord extends FirestoreRecord {
  ReviewsPsychologyStudentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "stud_name" field.
  String? _studName;
  String get studName => _studName ?? '';
  bool hasStudName() => _studName != null;

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
    _studName = snapshotData['stud_name'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _ratingGot = castToType<int>(snapshotData['rating_got']);
    _feedbackGot = snapshotData['feedback_got'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews_psychologyStudent');

  static Stream<ReviewsPsychologyStudentRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => ReviewsPsychologyStudentRecord.fromSnapshot(s));

  static Future<ReviewsPsychologyStudentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ReviewsPsychologyStudentRecord.fromSnapshot(s));

  static ReviewsPsychologyStudentRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      ReviewsPsychologyStudentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsPsychologyStudentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsPsychologyStudentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsPsychologyStudentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsPsychologyStudentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsPsychologyStudentRecordData({
  String? studName,
  String? userName,
  int? ratingGot,
  String? feedbackGot,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stud_name': studName,
      'user_name': userName,
      'rating_got': ratingGot,
      'feedback_got': feedbackGot,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsPsychologyStudentRecordDocumentEquality
    implements Equality<ReviewsPsychologyStudentRecord> {
  const ReviewsPsychologyStudentRecordDocumentEquality();

  @override
  bool equals(
      ReviewsPsychologyStudentRecord? e1, ReviewsPsychologyStudentRecord? e2) {
    return e1?.studName == e2?.studName &&
        e1?.userName == e2?.userName &&
        e1?.ratingGot == e2?.ratingGot &&
        e1?.feedbackGot == e2?.feedbackGot;
  }

  @override
  int hash(ReviewsPsychologyStudentRecord? e) => const ListEquality()
      .hash([e?.studName, e?.userName, e?.ratingGot, e?.feedbackGot]);

  @override
  bool isValidKey(Object? o) => o is ReviewsPsychologyStudentRecord;
}
