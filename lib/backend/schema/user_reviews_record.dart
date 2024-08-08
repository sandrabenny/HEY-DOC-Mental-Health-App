import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserReviewsRecord extends FirestoreRecord {
  UserReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "targetname" field.
  String? _targetname;
  String get targetname => _targetname ?? '';
  bool hasTargetname() => _targetname != null;

  // "targettype" field.
  String? _targettype;
  String get targettype => _targettype ?? '';
  bool hasTargettype() => _targettype != null;

  // "ratinggiven" field.
  int? _ratinggiven;
  int get ratinggiven => _ratinggiven ?? 0;
  bool hasRatinggiven() => _ratinggiven != null;

  // "feedbackgiven" field.
  String? _feedbackgiven;
  String get feedbackgiven => _feedbackgiven ?? '';
  bool hasFeedbackgiven() => _feedbackgiven != null;

  void _initializeFields() {
    _username = snapshotData['username'] as String?;
    _targetname = snapshotData['targetname'] as String?;
    _targettype = snapshotData['targettype'] as String?;
    _ratinggiven = castToType<int>(snapshotData['ratinggiven']);
    _feedbackgiven = snapshotData['feedbackgiven'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_reviews');

  static Stream<UserReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserReviewsRecord.fromSnapshot(s));

  static Future<UserReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserReviewsRecord.fromSnapshot(s));

  static UserReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserReviewsRecordData({
  String? username,
  String? targetname,
  String? targettype,
  int? ratinggiven,
  String? feedbackgiven,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'username': username,
      'targetname': targetname,
      'targettype': targettype,
      'ratinggiven': ratinggiven,
      'feedbackgiven': feedbackgiven,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserReviewsRecordDocumentEquality implements Equality<UserReviewsRecord> {
  const UserReviewsRecordDocumentEquality();

  @override
  bool equals(UserReviewsRecord? e1, UserReviewsRecord? e2) {
    return e1?.username == e2?.username &&
        e1?.targetname == e2?.targetname &&
        e1?.targettype == e2?.targettype &&
        e1?.ratinggiven == e2?.ratinggiven &&
        e1?.feedbackgiven == e2?.feedbackgiven;
  }

  @override
  int hash(UserReviewsRecord? e) => const ListEquality().hash([
        e?.username,
        e?.targetname,
        e?.targettype,
        e?.ratinggiven,
        e?.feedbackgiven
      ]);

  @override
  bool isValidKey(Object? o) => o is UserReviewsRecord;
}
