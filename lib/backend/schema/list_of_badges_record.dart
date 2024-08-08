import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListOfBadgesRecord extends FirestoreRecord {
  ListOfBadgesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "badge1" field.
  String? _badge1;
  String get badge1 => _badge1 ?? '';
  bool hasBadge1() => _badge1 != null;

  void _initializeFields() {
    _badge1 = snapshotData['badge1'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('list_of_badges');

  static Stream<ListOfBadgesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListOfBadgesRecord.fromSnapshot(s));

  static Future<ListOfBadgesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListOfBadgesRecord.fromSnapshot(s));

  static ListOfBadgesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListOfBadgesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListOfBadgesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListOfBadgesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListOfBadgesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListOfBadgesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListOfBadgesRecordData({
  String? badge1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'badge1': badge1,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListOfBadgesRecordDocumentEquality
    implements Equality<ListOfBadgesRecord> {
  const ListOfBadgesRecordDocumentEquality();

  @override
  bool equals(ListOfBadgesRecord? e1, ListOfBadgesRecord? e2) {
    return e1?.badge1 == e2?.badge1;
  }

  @override
  int hash(ListOfBadgesRecord? e) => const ListEquality().hash([e?.badge1]);

  @override
  bool isValidKey(Object? o) => o is ListOfBadgesRecord;
}
