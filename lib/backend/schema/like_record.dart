import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LikeRecord extends FirestoreRecord {
  LikeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "post_id" field.
  DocumentReference? _postId;
  DocumentReference? get postId => _postId;
  bool hasPostId() => _postId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _id = snapshotData['id'] as String?;
    _postId = snapshotData['post_id'] as DocumentReference?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('like');

  static Stream<LikeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LikeRecord.fromSnapshot(s));

  static Future<LikeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LikeRecord.fromSnapshot(s));

  static LikeRecord fromSnapshot(DocumentSnapshot snapshot) => LikeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LikeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LikeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LikeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LikeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLikeRecordData({
  DateTime? createdAt,
  String? id,
  DocumentReference? postId,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'id': id,
      'post_id': postId,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class LikeRecordDocumentEquality implements Equality<LikeRecord> {
  const LikeRecordDocumentEquality();

  @override
  bool equals(LikeRecord? e1, LikeRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.id == e2?.id &&
        e1?.postId == e2?.postId &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(LikeRecord? e) =>
      const ListEquality().hash([e?.createdAt, e?.id, e?.postId, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is LikeRecord;
}
