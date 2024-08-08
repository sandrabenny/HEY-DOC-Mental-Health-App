import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthSigninRecord extends FirestoreRecord {
  AuthSigninRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  bool hasNumber() => _number != null;

  // "drmail" field.
  String? _drmail;
  String get drmail => _drmail ?? '';
  bool hasDrmail() => _drmail != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  // "acceptance" field.
  bool? _acceptance;
  bool get acceptance => _acceptance ?? false;
  bool hasAcceptance() => _acceptance != null;

  // "userprof" field.
  String? _userprof;
  String get userprof => _userprof ?? '';
  bool hasUserprof() => _userprof != null;

  // "drprof" field.
  String? _drprof;
  String get drprof => _drprof ?? '';
  bool hasDrprof() => _drprof != null;

  // "drname" field.
  String? _drname;
  String get drname => _drname ?? '';
  bool hasDrname() => _drname != null;

  // "meet_date" field.
  DateTime? _meetDate;
  DateTime? get meetDate => _meetDate;
  bool hasMeetDate() => _meetDate != null;

  // "booked_date" field.
  DateTime? _bookedDate;
  DateTime? get bookedDate => _bookedDate;
  bool hasBookedDate() => _bookedDate != null;

  // "dr_fee" field.
  int? _drFee;
  int get drFee => _drFee ?? 0;
  bool hasDrFee() => _drFee != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "time_slot" field.
  String? _timeSlot;
  String get timeSlot => _timeSlot ?? '';
  bool hasTimeSlot() => _timeSlot != null;

  // "meet_link" field.
  String? _meetLink;
  String get meetLink => _meetLink ?? '';
  bool hasMeetLink() => _meetLink != null;

  // "ready_for_meet" field.
  bool? _readyForMeet;
  bool get readyForMeet => _readyForMeet ?? false;
  bool hasReadyForMeet() => _readyForMeet != null;

  // "meet_started" field.
  bool? _meetStarted;
  bool get meetStarted => _meetStarted ?? false;
  bool hasMeetStarted() => _meetStarted != null;

  // "payment_done" field.
  bool? _paymentDone;
  bool get paymentDone => _paymentDone ?? false;
  bool hasPaymentDone() => _paymentDone != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _type = snapshotData['type'] as String?;
    _number = castToType<int>(snapshotData['number']);
    _drmail = snapshotData['drmail'] as String?;
    _comments = snapshotData['comments'] as String?;
    _acceptance = snapshotData['acceptance'] as bool?;
    _userprof = snapshotData['userprof'] as String?;
    _drprof = snapshotData['drprof'] as String?;
    _drname = snapshotData['drname'] as String?;
    _meetDate = snapshotData['meet_date'] as DateTime?;
    _bookedDate = snapshotData['booked_date'] as DateTime?;
    _drFee = castToType<int>(snapshotData['dr_fee']);
    _userName = snapshotData['user_name'] as String?;
    _timeSlot = snapshotData['time_slot'] as String?;
    _meetLink = snapshotData['meet_link'] as String?;
    _readyForMeet = snapshotData['ready_for_meet'] as bool?;
    _meetStarted = snapshotData['meet_started'] as bool?;
    _paymentDone = snapshotData['payment_done'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('authSignin');

  static Stream<AuthSigninRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AuthSigninRecord.fromSnapshot(s));

  static Future<AuthSigninRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AuthSigninRecord.fromSnapshot(s));

  static AuthSigninRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AuthSigninRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AuthSigninRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AuthSigninRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AuthSigninRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AuthSigninRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAuthSigninRecordData({
  String? email,
  String? type,
  int? number,
  String? drmail,
  String? comments,
  bool? acceptance,
  String? userprof,
  String? drprof,
  String? drname,
  DateTime? meetDate,
  DateTime? bookedDate,
  int? drFee,
  String? userName,
  String? timeSlot,
  String? meetLink,
  bool? readyForMeet,
  bool? meetStarted,
  bool? paymentDone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'type': type,
      'number': number,
      'drmail': drmail,
      'comments': comments,
      'acceptance': acceptance,
      'userprof': userprof,
      'drprof': drprof,
      'drname': drname,
      'meet_date': meetDate,
      'booked_date': bookedDate,
      'dr_fee': drFee,
      'user_name': userName,
      'time_slot': timeSlot,
      'meet_link': meetLink,
      'ready_for_meet': readyForMeet,
      'meet_started': meetStarted,
      'payment_done': paymentDone,
    }.withoutNulls,
  );

  return firestoreData;
}

class AuthSigninRecordDocumentEquality implements Equality<AuthSigninRecord> {
  const AuthSigninRecordDocumentEquality();

  @override
  bool equals(AuthSigninRecord? e1, AuthSigninRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.type == e2?.type &&
        e1?.number == e2?.number &&
        e1?.drmail == e2?.drmail &&
        e1?.comments == e2?.comments &&
        e1?.acceptance == e2?.acceptance &&
        e1?.userprof == e2?.userprof &&
        e1?.drprof == e2?.drprof &&
        e1?.drname == e2?.drname &&
        e1?.meetDate == e2?.meetDate &&
        e1?.bookedDate == e2?.bookedDate &&
        e1?.drFee == e2?.drFee &&
        e1?.userName == e2?.userName &&
        e1?.timeSlot == e2?.timeSlot &&
        e1?.meetLink == e2?.meetLink &&
        e1?.readyForMeet == e2?.readyForMeet &&
        e1?.meetStarted == e2?.meetStarted &&
        e1?.paymentDone == e2?.paymentDone;
  }

  @override
  int hash(AuthSigninRecord? e) => const ListEquality().hash([
        e?.email,
        e?.type,
        e?.number,
        e?.drmail,
        e?.comments,
        e?.acceptance,
        e?.userprof,
        e?.drprof,
        e?.drname,
        e?.meetDate,
        e?.bookedDate,
        e?.drFee,
        e?.userName,
        e?.timeSlot,
        e?.meetLink,
        e?.readyForMeet,
        e?.meetStarted,
        e?.paymentDone
      ]);

  @override
  bool isValidKey(Object? o) => o is AuthSigninRecord;
}
