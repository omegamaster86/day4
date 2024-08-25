import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "thread_id" field.
  DocumentReference? _threadId;
  DocumentReference? get threadId => _threadId;
  bool hasThreadId() => _threadId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "category_id" field.
  DocumentReference? _categoryId;
  DocumentReference? get categoryId => _categoryId;
  bool hasCategoryId() => _categoryId != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _content = snapshotData['content'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _photo = snapshotData['photo'] as String?;
    _threadId = snapshotData['thread_id'] as DocumentReference?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _categoryId = snapshotData['category_id'] as DocumentReference?;
    _likes = getDataList(snapshotData['likes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post');

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostRecordData({
  String? id,
  String? content,
  DateTime? createdAt,
  String? photo,
  DocumentReference? threadId,
  DocumentReference? userId,
  DocumentReference? categoryId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'content': content,
      'created_at': createdAt,
      'photo': photo,
      'thread_id': threadId,
      'user_id': userId,
      'category_id': categoryId,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostRecordDocumentEquality implements Equality<PostRecord> {
  const PostRecordDocumentEquality();

  @override
  bool equals(PostRecord? e1, PostRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.content == e2?.content &&
        e1?.createdAt == e2?.createdAt &&
        e1?.photo == e2?.photo &&
        e1?.threadId == e2?.threadId &&
        e1?.userId == e2?.userId &&
        e1?.categoryId == e2?.categoryId &&
        listEquality.equals(e1?.likes, e2?.likes);
  }

  @override
  int hash(PostRecord? e) => const ListEquality().hash([
        e?.id,
        e?.content,
        e?.createdAt,
        e?.photo,
        e?.threadId,
        e?.userId,
        e?.categoryId,
        e?.likes
      ]);

  @override
  bool isValidKey(Object? o) => o is PostRecord;
}
