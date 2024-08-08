import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagingDepthRecord extends FirestoreRecord {
  MessagingDepthRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "delivered_mail" field.
  String? _deliveredMail;
  String get deliveredMail => _deliveredMail ?? '';
  bool hasDeliveredMail() => _deliveredMail != null;

  // "message_sent" field.
  String? _messageSent;
  String get messageSent => _messageSent ?? '';
  bool hasMessageSent() => _messageSent != null;

  // "received_mail" field.
  String? _receivedMail;
  String get receivedMail => _receivedMail ?? '';
  bool hasReceivedMail() => _receivedMail != null;

  // "delivered_time" field.
  DateTime? _deliveredTime;
  DateTime? get deliveredTime => _deliveredTime;
  bool hasDeliveredTime() => _deliveredTime != null;

  void _initializeFields() {
    _deliveredMail = snapshotData['delivered_mail'] as String?;
    _messageSent = snapshotData['message_sent'] as String?;
    _receivedMail = snapshotData['received_mail'] as String?;
    _deliveredTime = snapshotData['delivered_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('messaging_depth');

  static Stream<MessagingDepthRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagingDepthRecord.fromSnapshot(s));

  static Future<MessagingDepthRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagingDepthRecord.fromSnapshot(s));

  static MessagingDepthRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagingDepthRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagingDepthRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagingDepthRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagingDepthRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagingDepthRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagingDepthRecordData({
  String? deliveredMail,
  String? messageSent,
  String? receivedMail,
  DateTime? deliveredTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'delivered_mail': deliveredMail,
      'message_sent': messageSent,
      'received_mail': receivedMail,
      'delivered_time': deliveredTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagingDepthRecordDocumentEquality
    implements Equality<MessagingDepthRecord> {
  const MessagingDepthRecordDocumentEquality();

  @override
  bool equals(MessagingDepthRecord? e1, MessagingDepthRecord? e2) {
    return e1?.deliveredMail == e2?.deliveredMail &&
        e1?.messageSent == e2?.messageSent &&
        e1?.receivedMail == e2?.receivedMail &&
        e1?.deliveredTime == e2?.deliveredTime;
  }

  @override
  int hash(MessagingDepthRecord? e) => const ListEquality().hash(
      [e?.deliveredMail, e?.messageSent, e?.receivedMail, e?.deliveredTime]);

  @override
  bool isValidKey(Object? o) => o is MessagingDepthRecord;
}
