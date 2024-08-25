import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ThreadRecord extends FirestoreRecord {
  ThreadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "category_id" field.
  DocumentReference? _categoryId;
  DocumentReference? get categoryId => _categoryId;
  bool hasCategoryId() => _categoryId != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _title = snapshotData['title'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _categoryId = snapshotData['category_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('thread');

  static Stream<ThreadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThreadRecord.fromSnapshot(s));

  static Future<ThreadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThreadRecord.fromSnapshot(s));

  static ThreadRecord fromSnapshot(DocumentSnapshot snapshot) => ThreadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThreadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThreadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThreadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThreadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThreadRecordData({
  String? id,
  String? title,
  DocumentReference? userId,
  DateTime? createdAt,
  DateTime? updatedAt,
  DocumentReference? categoryId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'title': title,
      'user_id': userId,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'category_id': categoryId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ThreadRecordDocumentEquality implements Equality<ThreadRecord> {
  const ThreadRecordDocumentEquality();

  @override
  bool equals(ThreadRecord? e1, ThreadRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.title == e2?.title &&
        e1?.userId == e2?.userId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.categoryId == e2?.categoryId;
  }

  @override
  int hash(ThreadRecord? e) => const ListEquality().hash(
      [e?.id, e?.title, e?.userId, e?.createdAt, e?.updatedAt, e?.categoryId]);

  @override
  bool isValidKey(Object? o) => o is ThreadRecord;
}
