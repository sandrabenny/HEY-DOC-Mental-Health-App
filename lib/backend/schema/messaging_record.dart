import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagingRecord extends FirestoreRecord {
  MessagingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_a_mail" field.
  String? _userAMail;
  String get userAMail => _userAMail ?? '';
  bool hasUserAMail() => _userAMail != null;

  // "user_b_mail" field.
  String? _userBMail;
  String get userBMail => _userBMail ?? '';
  bool hasUserBMail() => _userBMail != null;

  // "user_a_name" field.
  String? _userAName;
  String get userAName => _userAName ?? '';
  bool hasUserAName() => _userAName != null;

  // "user_b_name" field.
  String? _userBName;
  String get userBName => _userBName ?? '';
  bool hasUserBName() => _userBName != null;

  // "user_a_profile" field.
  String? _userAProfile;
  String get userAProfile => _userAProfile ?? '';
  bool hasUserAProfile() => _userAProfile != null;

  // "user_b_profile" field.
  String? _userBProfile;
  String get userBProfile => _userBProfile ?? '';
  bool hasUserBProfile() => _userBProfile != null;

  // "last_message_time" field.
  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _lastMessageTime;
  bool hasLastMessageTime() => _lastMessageTime != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "all_messages" field.
  List<String>? _allMessages;
  List<String> get allMessages => _allMessages ?? const [];
  bool hasAllMessages() => _allMessages != null;

  void _initializeFields() {
    _userAMail = snapshotData['user_a_mail'] as String?;
    _userBMail = snapshotData['user_b_mail'] as String?;
    _userAName = snapshotData['user_a_name'] as String?;
    _userBName = snapshotData['user_b_name'] as String?;
    _userAProfile = snapshotData['user_a_profile'] as String?;
    _userBProfile = snapshotData['user_b_profile'] as String?;
    _lastMessageTime = snapshotData['last_message_time'] as DateTime?;
    _lastMessage = snapshotData['last_message'] as String?;
    _allMessages = getDataList(snapshotData['all_messages']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Messaging');

  static Stream<MessagingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagingRecord.fromSnapshot(s));

  static Future<MessagingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagingRecord.fromSnapshot(s));

  static MessagingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagingRecordData({
  String? userAMail,
  String? userBMail,
  String? userAName,
  String? userBName,
  String? userAProfile,
  String? userBProfile,
  DateTime? lastMessageTime,
  String? lastMessage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_a_mail': userAMail,
      'user_b_mail': userBMail,
      'user_a_name': userAName,
      'user_b_name': userBName,
      'user_a_profile': userAProfile,
      'user_b_profile': userBProfile,
      'last_message_time': lastMessageTime,
      'last_message': lastMessage,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagingRecordDocumentEquality implements Equality<MessagingRecord> {
  const MessagingRecordDocumentEquality();

  @override
  bool equals(MessagingRecord? e1, MessagingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userAMail == e2?.userAMail &&
        e1?.userBMail == e2?.userBMail &&
        e1?.userAName == e2?.userAName &&
        e1?.userBName == e2?.userBName &&
        e1?.userAProfile == e2?.userAProfile &&
        e1?.userBProfile == e2?.userBProfile &&
        e1?.lastMessageTime == e2?.lastMessageTime &&
        e1?.lastMessage == e2?.lastMessage &&
        listEquality.equals(e1?.allMessages, e2?.allMessages);
  }

  @override
  int hash(MessagingRecord? e) => const ListEquality().hash([
        e?.userAMail,
        e?.userBMail,
        e?.userAName,
        e?.userBName,
        e?.userAProfile,
        e?.userBProfile,
        e?.lastMessageTime,
        e?.lastMessage,
        e?.allMessages
      ]);

  @override
  bool isValidKey(Object? o) => o is MessagingRecord;
}
