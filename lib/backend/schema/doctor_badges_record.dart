import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorBadgesRecord extends FirestoreRecord {
  DoctorBadgesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "doc_mail" field.
  String? _docMail;
  String get docMail => _docMail ?? '';
  bool hasDocMail() => _docMail != null;

  // "badge_received" field.
  String? _badgeReceived;
  String get badgeReceived => _badgeReceived ?? '';
  bool hasBadgeReceived() => _badgeReceived != null;

  void _initializeFields() {
    _docMail = snapshotData['doc_mail'] as String?;
    _badgeReceived = snapshotData['badge_received'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doctor_badges');

  static Stream<DoctorBadgesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorBadgesRecord.fromSnapshot(s));

  static Future<DoctorBadgesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorBadgesRecord.fromSnapshot(s));

  static DoctorBadgesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DoctorBadgesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorBadgesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorBadgesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorBadgesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorBadgesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorBadgesRecordData({
  String? docMail,
  String? badgeReceived,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doc_mail': docMail,
      'badge_received': badgeReceived,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoctorBadgesRecordDocumentEquality
    implements Equality<DoctorBadgesRecord> {
  const DoctorBadgesRecordDocumentEquality();

  @override
  bool equals(DoctorBadgesRecord? e1, DoctorBadgesRecord? e2) {
    return e1?.docMail == e2?.docMail && e1?.badgeReceived == e2?.badgeReceived;
  }

  @override
  int hash(DoctorBadgesRecord? e) =>
      const ListEquality().hash([e?.docMail, e?.badgeReceived]);

  @override
  bool isValidKey(Object? o) => o is DoctorBadgesRecord;
}
