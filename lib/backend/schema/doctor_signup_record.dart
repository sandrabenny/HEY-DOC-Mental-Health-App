import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorSignupRecord extends FirestoreRecord {
  DoctorSignupRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "doctor_name" field.
  String? _doctorName;
  String get doctorName => _doctorName ?? '';
  bool hasDoctorName() => _doctorName != null;

  // "doctor_email" field.
  String? _doctorEmail;
  String get doctorEmail => _doctorEmail ?? '';
  bool hasDoctorEmail() => _doctorEmail != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "cpassword" field.
  String? _cpassword;
  String get cpassword => _cpassword ?? '';
  bool hasCpassword() => _cpassword != null;

  // "doctor_phone" field.
  int? _doctorPhone;
  int get doctorPhone => _doctorPhone ?? 0;
  bool hasDoctorPhone() => _doctorPhone != null;

  // "doctor_gender" field.
  String? _doctorGender;
  String get doctorGender => _doctorGender ?? '';
  bool hasDoctorGender() => _doctorGender != null;

  // "doctor_occupation" field.
  String? _doctorOccupation;
  String get doctorOccupation => _doctorOccupation ?? '';
  bool hasDoctorOccupation() => _doctorOccupation != null;

  // "certification" field.
  String? _certification;
  String get certification => _certification ?? '';
  bool hasCertification() => _certification != null;

  // "profile" field.
  String? _profile;
  String get profile => _profile ?? '';
  bool hasProfile() => _profile != null;

  // "doctor_nationality" field.
  String? _doctorNationality;
  String get doctorNationality => _doctorNationality ?? '';
  bool hasDoctorNationality() => _doctorNationality != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "doctor_lname" field.
  String? _doctorLname;
  String get doctorLname => _doctorLname ?? '';
  bool hasDoctorLname() => _doctorLname != null;

  // "doctor_dob" field.
  DateTime? _doctorDob;
  DateTime? get doctorDob => _doctorDob;
  bool hasDoctorDob() => _doctorDob != null;

  // "experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  // "filter_languages" field.
  List<String>? _filterLanguages;
  List<String> get filterLanguages => _filterLanguages ?? const [];
  bool hasFilterLanguages() => _filterLanguages != null;

  // "premium" field.
  bool? _premium;
  bool get premium => _premium ?? false;
  bool hasPremium() => _premium != null;

  void _initializeFields() {
    _doctorName = snapshotData['doctor_name'] as String?;
    _doctorEmail = snapshotData['doctor_email'] as String?;
    _password = snapshotData['password'] as String?;
    _cpassword = snapshotData['cpassword'] as String?;
    _doctorPhone = castToType<int>(snapshotData['doctor_phone']);
    _doctorGender = snapshotData['doctor_gender'] as String?;
    _doctorOccupation = snapshotData['doctor_occupation'] as String?;
    _certification = snapshotData['certification'] as String?;
    _profile = snapshotData['profile'] as String?;
    _doctorNationality = snapshotData['doctor_nationality'] as String?;
    _language = snapshotData['language'] as String?;
    _about = snapshotData['about'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _doctorLname = snapshotData['doctor_lname'] as String?;
    _doctorDob = snapshotData['doctor_dob'] as DateTime?;
    _experience = snapshotData['experience'] as String?;
    _filterLanguages = getDataList(snapshotData['filter_languages']);
    _premium = snapshotData['premium'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doctor_signup');

  static Stream<DoctorSignupRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorSignupRecord.fromSnapshot(s));

  static Future<DoctorSignupRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorSignupRecord.fromSnapshot(s));

  static DoctorSignupRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DoctorSignupRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorSignupRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorSignupRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorSignupRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorSignupRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorSignupRecordData({
  String? doctorName,
  String? doctorEmail,
  String? password,
  String? cpassword,
  int? doctorPhone,
  String? doctorGender,
  String? doctorOccupation,
  String? certification,
  String? profile,
  String? doctorNationality,
  String? language,
  String? about,
  int? price,
  String? doctorLname,
  DateTime? doctorDob,
  String? experience,
  bool? premium,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctor_name': doctorName,
      'doctor_email': doctorEmail,
      'password': password,
      'cpassword': cpassword,
      'doctor_phone': doctorPhone,
      'doctor_gender': doctorGender,
      'doctor_occupation': doctorOccupation,
      'certification': certification,
      'profile': profile,
      'doctor_nationality': doctorNationality,
      'language': language,
      'about': about,
      'price': price,
      'doctor_lname': doctorLname,
      'doctor_dob': doctorDob,
      'experience': experience,
      'premium': premium,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoctorSignupRecordDocumentEquality
    implements Equality<DoctorSignupRecord> {
  const DoctorSignupRecordDocumentEquality();

  @override
  bool equals(DoctorSignupRecord? e1, DoctorSignupRecord? e2) {
    const listEquality = ListEquality();
    return e1?.doctorName == e2?.doctorName &&
        e1?.doctorEmail == e2?.doctorEmail &&
        e1?.password == e2?.password &&
        e1?.cpassword == e2?.cpassword &&
        e1?.doctorPhone == e2?.doctorPhone &&
        e1?.doctorGender == e2?.doctorGender &&
        e1?.doctorOccupation == e2?.doctorOccupation &&
        e1?.certification == e2?.certification &&
        e1?.profile == e2?.profile &&
        e1?.doctorNationality == e2?.doctorNationality &&
        e1?.language == e2?.language &&
        e1?.about == e2?.about &&
        e1?.price == e2?.price &&
        e1?.doctorLname == e2?.doctorLname &&
        e1?.doctorDob == e2?.doctorDob &&
        e1?.experience == e2?.experience &&
        listEquality.equals(e1?.filterLanguages, e2?.filterLanguages) &&
        e1?.premium == e2?.premium;
  }

  @override
  int hash(DoctorSignupRecord? e) => const ListEquality().hash([
        e?.doctorName,
        e?.doctorEmail,
        e?.password,
        e?.cpassword,
        e?.doctorPhone,
        e?.doctorGender,
        e?.doctorOccupation,
        e?.certification,
        e?.profile,
        e?.doctorNationality,
        e?.language,
        e?.about,
        e?.price,
        e?.doctorLname,
        e?.doctorDob,
        e?.experience,
        e?.filterLanguages,
        e?.premium
      ]);

  @override
  bool isValidKey(Object? o) => o is DoctorSignupRecord;
}
