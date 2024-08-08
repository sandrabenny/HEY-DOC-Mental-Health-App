import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavouriteStudentsRecord extends FirestoreRecord {
  FavouriteStudentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_mail" field.
  String? _userMail;
  String get userMail => _userMail ?? '';
  bool hasUserMail() => _userMail != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "user_profile" field.
  String? _userProfile;
  String get userProfile => _userProfile ?? '';
  bool hasUserProfile() => _userProfile != null;

  // "student_mail" field.
  String? _studentMail;
  String get studentMail => _studentMail ?? '';
  bool hasStudentMail() => _studentMail != null;

  // "student_name" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "student_profile" field.
  String? _studentProfile;
  String get studentProfile => _studentProfile ?? '';
  bool hasStudentProfile() => _studentProfile != null;

  void _initializeFields() {
    _userMail = snapshotData['user_mail'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _userProfile = snapshotData['user_profile'] as String?;
    _studentMail = snapshotData['student_mail'] as String?;
    _studentName = snapshotData['student_name'] as String?;
    _studentProfile = snapshotData['student_profile'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favourite_students');

  static Stream<FavouriteStudentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavouriteStudentsRecord.fromSnapshot(s));

  static Future<FavouriteStudentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FavouriteStudentsRecord.fromSnapshot(s));

  static FavouriteStudentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavouriteStudentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavouriteStudentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavouriteStudentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavouriteStudentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavouriteStudentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavouriteStudentsRecordData({
  String? userMail,
  String? userName,
  String? userProfile,
  String? studentMail,
  String? studentName,
  String? studentProfile,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_mail': userMail,
      'user_name': userName,
      'user_profile': userProfile,
      'student_mail': studentMail,
      'student_name': studentName,
      'student_profile': studentProfile,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavouriteStudentsRecordDocumentEquality
    implements Equality<FavouriteStudentsRecord> {
  const FavouriteStudentsRecordDocumentEquality();

  @override
  bool equals(FavouriteStudentsRecord? e1, FavouriteStudentsRecord? e2) {
    return e1?.userMail == e2?.userMail &&
        e1?.userName == e2?.userName &&
        e1?.userProfile == e2?.userProfile &&
        e1?.studentMail == e2?.studentMail &&
        e1?.studentName == e2?.studentName &&
        e1?.studentProfile == e2?.studentProfile;
  }

  @override
  int hash(FavouriteStudentsRecord? e) => const ListEquality().hash([
        e?.userMail,
        e?.userName,
        e?.userProfile,
        e?.studentMail,
        e?.studentName,
        e?.studentProfile
      ]);

  @override
  bool isValidKey(Object? o) => o is FavouriteStudentsRecord;
}
