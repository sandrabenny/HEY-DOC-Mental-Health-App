import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllUsersRecord extends FirestoreRecord {
  AllUsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "clients" field.
  List<String>? _clients;
  List<String> get clients => _clients ?? const [];
  bool hasClients() => _clients != null;

  // "doctors" field.
  List<String>? _doctors;
  List<String> get doctors => _doctors ?? const [];
  bool hasDoctors() => _doctors != null;

  // "students" field.
  List<String>? _students;
  List<String> get students => _students ?? const [];
  bool hasStudents() => _students != null;

  void _initializeFields() {
    _clients = getDataList(snapshotData['clients']);
    _doctors = getDataList(snapshotData['doctors']);
    _students = getDataList(snapshotData['students']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('all_users');

  static Stream<AllUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllUsersRecord.fromSnapshot(s));

  static Future<AllUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllUsersRecord.fromSnapshot(s));

  static AllUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllUsersRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class AllUsersRecordDocumentEquality implements Equality<AllUsersRecord> {
  const AllUsersRecordDocumentEquality();

  @override
  bool equals(AllUsersRecord? e1, AllUsersRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.clients, e2?.clients) &&
        listEquality.equals(e1?.doctors, e2?.doctors) &&
        listEquality.equals(e1?.students, e2?.students);
  }

  @override
  int hash(AllUsersRecord? e) =>
      const ListEquality().hash([e?.clients, e?.doctors, e?.students]);

  @override
  bool isValidKey(Object? o) => o is AllUsersRecord;
}
