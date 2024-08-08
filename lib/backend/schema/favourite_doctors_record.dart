import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavouriteDoctorsRecord extends FirestoreRecord {
  FavouriteDoctorsRecord._(
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

  // "doc_mail" field.
  String? _docMail;
  String get docMail => _docMail ?? '';
  bool hasDocMail() => _docMail != null;

  // "doc_name" field.
  String? _docName;
  String get docName => _docName ?? '';
  bool hasDocName() => _docName != null;

  // "doc_profile" field.
  String? _docProfile;
  String get docProfile => _docProfile ?? '';
  bool hasDocProfile() => _docProfile != null;

  // "dr_spec" field.
  String? _drSpec;
  String get drSpec => _drSpec ?? '';
  bool hasDrSpec() => _drSpec != null;

  // "dr_fee" field.
  int? _drFee;
  int get drFee => _drFee ?? 0;
  bool hasDrFee() => _drFee != null;

  // "user_profile" field.
  String? _userProfile;
  String get userProfile => _userProfile ?? '';
  bool hasUserProfile() => _userProfile != null;

  void _initializeFields() {
    _userMail = snapshotData['user_mail'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _docMail = snapshotData['doc_mail'] as String?;
    _docName = snapshotData['doc_name'] as String?;
    _docProfile = snapshotData['doc_profile'] as String?;
    _drSpec = snapshotData['dr_spec'] as String?;
    _drFee = castToType<int>(snapshotData['dr_fee']);
    _userProfile = snapshotData['user_profile'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favourite_doctors');

  static Stream<FavouriteDoctorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavouriteDoctorsRecord.fromSnapshot(s));

  static Future<FavouriteDoctorsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FavouriteDoctorsRecord.fromSnapshot(s));

  static FavouriteDoctorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavouriteDoctorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavouriteDoctorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavouriteDoctorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavouriteDoctorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavouriteDoctorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavouriteDoctorsRecordData({
  String? userMail,
  String? userName,
  String? docMail,
  String? docName,
  String? docProfile,
  String? drSpec,
  int? drFee,
  String? userProfile,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_mail': userMail,
      'user_name': userName,
      'doc_mail': docMail,
      'doc_name': docName,
      'doc_profile': docProfile,
      'dr_spec': drSpec,
      'dr_fee': drFee,
      'user_profile': userProfile,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavouriteDoctorsRecordDocumentEquality
    implements Equality<FavouriteDoctorsRecord> {
  const FavouriteDoctorsRecordDocumentEquality();

  @override
  bool equals(FavouriteDoctorsRecord? e1, FavouriteDoctorsRecord? e2) {
    return e1?.userMail == e2?.userMail &&
        e1?.userName == e2?.userName &&
        e1?.docMail == e2?.docMail &&
        e1?.docName == e2?.docName &&
        e1?.docProfile == e2?.docProfile &&
        e1?.drSpec == e2?.drSpec &&
        e1?.drFee == e2?.drFee &&
        e1?.userProfile == e2?.userProfile;
  }

  @override
  int hash(FavouriteDoctorsRecord? e) => const ListEquality().hash([
        e?.userMail,
        e?.userName,
        e?.docMail,
        e?.docName,
        e?.docProfile,
        e?.drSpec,
        e?.drFee,
        e?.userProfile
      ]);

  @override
  bool isValidKey(Object? o) => o is FavouriteDoctorsRecord;
}
