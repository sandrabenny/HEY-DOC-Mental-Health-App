import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatusersRecord extends FirestoreRecord {
  ChatusersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sender_mail" field.
  String? _senderMail;
  String get senderMail => _senderMail ?? '';
  bool hasSenderMail() => _senderMail != null;

  // "notification_pushed" field.
  String? _notificationPushed;
  String get notificationPushed => _notificationPushed ?? '';
  bool hasNotificationPushed() => _notificationPushed != null;

  // "receiver_mail" field.
  String? _receiverMail;
  String get receiverMail => _receiverMail ?? '';
  bool hasReceiverMail() => _receiverMail != null;

  // "pushed_time" field.
  DateTime? _pushedTime;
  DateTime? get pushedTime => _pushedTime;
  bool hasPushedTime() => _pushedTime != null;

  void _initializeFields() {
    _senderMail = snapshotData['sender_mail'] as String?;
    _notificationPushed = snapshotData['notification_pushed'] as String?;
    _receiverMail = snapshotData['receiver_mail'] as String?;
    _pushedTime = snapshotData['pushed_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chatusers');

  static Stream<ChatusersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatusersRecord.fromSnapshot(s));

  static Future<ChatusersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatusersRecord.fromSnapshot(s));

  static ChatusersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatusersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatusersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatusersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatusersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatusersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatusersRecordData({
  String? senderMail,
  String? notificationPushed,
  String? receiverMail,
  DateTime? pushedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender_mail': senderMail,
      'notification_pushed': notificationPushed,
      'receiver_mail': receiverMail,
      'pushed_time': pushedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatusersRecordDocumentEquality implements Equality<ChatusersRecord> {
  const ChatusersRecordDocumentEquality();

  @override
  bool equals(ChatusersRecord? e1, ChatusersRecord? e2) {
    return e1?.senderMail == e2?.senderMail &&
        e1?.notificationPushed == e2?.notificationPushed &&
        e1?.receiverMail == e2?.receiverMail &&
        e1?.pushedTime == e2?.pushedTime;
  }

  @override
  int hash(ChatusersRecord? e) => const ListEquality().hash(
      [e?.senderMail, e?.notificationPushed, e?.receiverMail, e?.pushedTime]);

  @override
  bool isValidKey(Object? o) => o is ChatusersRecord;
}
