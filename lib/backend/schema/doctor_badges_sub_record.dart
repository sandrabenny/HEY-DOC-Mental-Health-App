import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorBadgesSubRecord extends FirestoreRecord {
  DoctorBadgesSubRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "doc_mail" field.
  String? _docMail;
  String get docMail => _docMail ?? '';
  bool hasDocMail() => _docMail != null;

  // "consulted" field.
  int? _consulted;
  int get consulted => _consulted ?? 0;
  bool hasConsulted() => _consulted != null;

  void _initializeFields() {
    _docMail = snapshotData['doc_mail'] as String?;
    _consulted = castToType<int>(snapshotData['consulted']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doctor_badges_sub');

  static Stream<DoctorBadgesSubRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorBadgesSubRecord.fromSnapshot(s));

  static Future<DoctorBadgesSubRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorBadgesSubRecord.fromSnapshot(s));

  static DoctorBadgesSubRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DoctorBadgesSubRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorBadgesSubRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorBadgesSubRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorBadgesSubRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorBadgesSubRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorBadgesSubRecordData({
  String? docMail,
  int? consulted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doc_mail': docMail,
      'consulted': consulted,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoctorBadgesSubRecordDocumentEquality
    implements Equality<DoctorBadgesSubRecord> {
  const DoctorBadgesSubRecordDocumentEquality();

  @override
  bool equals(DoctorBadgesSubRecord? e1, DoctorBadgesSubRecord? e2) {
    return e1?.docMail == e2?.docMail && e1?.consulted == e2?.consulted;
  }

  @override
  int hash(DoctorBadgesSubRecord? e) =>
      const ListEquality().hash([e?.docMail, e?.consulted]);

  @override
  bool isValidKey(Object? o) => o is DoctorBadgesSubRecord;
}
