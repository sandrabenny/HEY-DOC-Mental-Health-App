import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PsychProfileDetailsRecord extends FirestoreRecord {
  PsychProfileDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "stud_name" field.
  String? _studName;
  String get studName => _studName ?? '';
  bool hasStudName() => _studName != null;

  // "stud_email" field.
  String? _studEmail;
  String get studEmail => _studEmail ?? '';
  bool hasStudEmail() => _studEmail != null;

  // "stud_phone" field.
  int? _studPhone;
  int get studPhone => _studPhone ?? 0;
  bool hasStudPhone() => _studPhone != null;

  // "stud_gender" field.
  String? _studGender;
  String get studGender => _studGender ?? '';
  bool hasStudGender() => _studGender != null;

  // "stud_nationality" field.
  String? _studNationality;
  String get studNationality => _studNationality ?? '';
  bool hasStudNationality() => _studNationality != null;

  // "stud_course" field.
  String? _studCourse;
  String get studCourse => _studCourse ?? '';
  bool hasStudCourse() => _studCourse != null;

  // "stud_university" field.
  String? _studUniversity;
  String get studUniversity => _studUniversity ?? '';
  bool hasStudUniversity() => _studUniversity != null;

  // "stud_idcard" field.
  String? _studIdcard;
  String get studIdcard => _studIdcard ?? '';
  bool hasStudIdcard() => _studIdcard != null;

  // "stud_profile" field.
  String? _studProfile;
  String get studProfile => _studProfile ?? '';
  bool hasStudProfile() => _studProfile != null;

  // "stud_bio" field.
  String? _studBio;
  String get studBio => _studBio ?? '';
  bool hasStudBio() => _studBio != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "cpassword" field.
  String? _cpassword;
  String get cpassword => _cpassword ?? '';
  bool hasCpassword() => _cpassword != null;

  // "stud_lname" field.
  String? _studLname;
  String get studLname => _studLname ?? '';
  bool hasStudLname() => _studLname != null;

  // "stud_language" field.
  String? _studLanguage;
  String get studLanguage => _studLanguage ?? '';
  bool hasStudLanguage() => _studLanguage != null;

  // "stud_dob" field.
  DateTime? _studDob;
  DateTime? get studDob => _studDob;
  bool hasStudDob() => _studDob != null;

  // "premium" field.
  bool? _premium;
  bool get premium => _premium ?? false;
  bool hasPremium() => _premium != null;

  void _initializeFields() {
    _studName = snapshotData['stud_name'] as String?;
    _studEmail = snapshotData['stud_email'] as String?;
    _studPhone = castToType<int>(snapshotData['stud_phone']);
    _studGender = snapshotData['stud_gender'] as String?;
    _studNationality = snapshotData['stud_nationality'] as String?;
    _studCourse = snapshotData['stud_course'] as String?;
    _studUniversity = snapshotData['stud_university'] as String?;
    _studIdcard = snapshotData['stud_idcard'] as String?;
    _studProfile = snapshotData['stud_profile'] as String?;
    _studBio = snapshotData['stud_bio'] as String?;
    _password = snapshotData['password'] as String?;
    _cpassword = snapshotData['cpassword'] as String?;
    _studLname = snapshotData['stud_lname'] as String?;
    _studLanguage = snapshotData['stud_language'] as String?;
    _studDob = snapshotData['stud_dob'] as DateTime?;
    _premium = snapshotData['premium'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('psych_profileDetails');

  static Stream<PsychProfileDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PsychProfileDetailsRecord.fromSnapshot(s));

  static Future<PsychProfileDetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PsychProfileDetailsRecord.fromSnapshot(s));

  static PsychProfileDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PsychProfileDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PsychProfileDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PsychProfileDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PsychProfileDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PsychProfileDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPsychProfileDetailsRecordData({
  String? studName,
  String? studEmail,
  int? studPhone,
  String? studGender,
  String? studNationality,
  String? studCourse,
  String? studUniversity,
  String? studIdcard,
  String? studProfile,
  String? studBio,
  String? password,
  String? cpassword,
  String? studLname,
  String? studLanguage,
  DateTime? studDob,
  bool? premium,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stud_name': studName,
      'stud_email': studEmail,
      'stud_phone': studPhone,
      'stud_gender': studGender,
      'stud_nationality': studNationality,
      'stud_course': studCourse,
      'stud_university': studUniversity,
      'stud_idcard': studIdcard,
      'stud_profile': studProfile,
      'stud_bio': studBio,
      'password': password,
      'cpassword': cpassword,
      'stud_lname': studLname,
      'stud_language': studLanguage,
      'stud_dob': studDob,
      'premium': premium,
    }.withoutNulls,
  );

  return firestoreData;
}

class PsychProfileDetailsRecordDocumentEquality
    implements Equality<PsychProfileDetailsRecord> {
  const PsychProfileDetailsRecordDocumentEquality();

  @override
  bool equals(PsychProfileDetailsRecord? e1, PsychProfileDetailsRecord? e2) {
    return e1?.studName == e2?.studName &&
        e1?.studEmail == e2?.studEmail &&
        e1?.studPhone == e2?.studPhone &&
        e1?.studGender == e2?.studGender &&
        e1?.studNationality == e2?.studNationality &&
        e1?.studCourse == e2?.studCourse &&
        e1?.studUniversity == e2?.studUniversity &&
        e1?.studIdcard == e2?.studIdcard &&
        e1?.studProfile == e2?.studProfile &&
        e1?.studBio == e2?.studBio &&
        e1?.password == e2?.password &&
        e1?.cpassword == e2?.cpassword &&
        e1?.studLname == e2?.studLname &&
        e1?.studLanguage == e2?.studLanguage &&
        e1?.studDob == e2?.studDob &&
        e1?.premium == e2?.premium;
  }

  @override
  int hash(PsychProfileDetailsRecord? e) => const ListEquality().hash([
        e?.studName,
        e?.studEmail,
        e?.studPhone,
        e?.studGender,
        e?.studNationality,
        e?.studCourse,
        e?.studUniversity,
        e?.studIdcard,
        e?.studProfile,
        e?.studBio,
        e?.password,
        e?.cpassword,
        e?.studLname,
        e?.studLanguage,
        e?.studDob,
        e?.premium
      ]);

  @override
  bool isValidKey(Object? o) => o is PsychProfileDetailsRecord;
}
