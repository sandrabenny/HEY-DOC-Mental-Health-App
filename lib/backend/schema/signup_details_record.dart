import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SignupDetailsRecord extends FirestoreRecord {
  SignupDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "cpassword" field.
  String? _cpassword;
  String get cpassword => _cpassword ?? '';
  bool hasCpassword() => _cpassword != null;

  // "p_name" field.
  String? _pName;
  String get pName => _pName ?? '';
  bool hasPName() => _pName != null;

  // "p_phone" field.
  int? _pPhone;
  int get pPhone => _pPhone ?? 0;
  bool hasPPhone() => _pPhone != null;

  // "p_gender" field.
  String? _pGender;
  String get pGender => _pGender ?? '';
  bool hasPGender() => _pGender != null;

  // "occupation" field.
  String? _occupation;
  String get occupation => _occupation ?? '';
  bool hasOccupation() => _occupation != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "profile" field.
  String? _profile;
  String get profile => _profile ?? '';
  bool hasProfile() => _profile != null;

  // "nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  bool hasNationality() => _nationality != null;

  // "p_lastname" field.
  String? _pLastname;
  String get pLastname => _pLastname ?? '';
  bool hasPLastname() => _pLastname != null;

  // "p_dob" field.
  DateTime? _pDob;
  DateTime? get pDob => _pDob;
  bool hasPDob() => _pDob != null;

  // "premium" field.
  bool? _premium;
  bool get premium => _premium ?? false;
  bool hasPremium() => _premium != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _cpassword = snapshotData['cpassword'] as String?;
    _pName = snapshotData['p_name'] as String?;
    _pPhone = castToType<int>(snapshotData['p_phone']);
    _pGender = snapshotData['p_gender'] as String?;
    _occupation = snapshotData['occupation'] as String?;
    _bio = snapshotData['bio'] as String?;
    _profile = snapshotData['profile'] as String?;
    _nationality = snapshotData['nationality'] as String?;
    _pLastname = snapshotData['p_lastname'] as String?;
    _pDob = snapshotData['p_dob'] as DateTime?;
    _premium = snapshotData['premium'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('signup_details');

  static Stream<SignupDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SignupDetailsRecord.fromSnapshot(s));

  static Future<SignupDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SignupDetailsRecord.fromSnapshot(s));

  static SignupDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SignupDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SignupDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SignupDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SignupDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SignupDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSignupDetailsRecordData({
  String? email,
  String? password,
  String? cpassword,
  String? pName,
  int? pPhone,
  String? pGender,
  String? occupation,
  String? bio,
  String? profile,
  String? nationality,
  String? pLastname,
  DateTime? pDob,
  bool? premium,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'password': password,
      'cpassword': cpassword,
      'p_name': pName,
      'p_phone': pPhone,
      'p_gender': pGender,
      'occupation': occupation,
      'bio': bio,
      'profile': profile,
      'nationality': nationality,
      'p_lastname': pLastname,
      'p_dob': pDob,
      'premium': premium,
    }.withoutNulls,
  );

  return firestoreData;
}

class SignupDetailsRecordDocumentEquality
    implements Equality<SignupDetailsRecord> {
  const SignupDetailsRecordDocumentEquality();

  @override
  bool equals(SignupDetailsRecord? e1, SignupDetailsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.cpassword == e2?.cpassword &&
        e1?.pName == e2?.pName &&
        e1?.pPhone == e2?.pPhone &&
        e1?.pGender == e2?.pGender &&
        e1?.occupation == e2?.occupation &&
        e1?.bio == e2?.bio &&
        e1?.profile == e2?.profile &&
        e1?.nationality == e2?.nationality &&
        e1?.pLastname == e2?.pLastname &&
        e1?.pDob == e2?.pDob &&
        e1?.premium == e2?.premium;
  }

  @override
  int hash(SignupDetailsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.password,
        e?.cpassword,
        e?.pName,
        e?.pPhone,
        e?.pGender,
        e?.occupation,
        e?.bio,
        e?.profile,
        e?.nationality,
        e?.pLastname,
        e?.pDob,
        e?.premium
      ]);

  @override
  bool isValidKey(Object? o) => o is SignupDetailsRecord;
}
