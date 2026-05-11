// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:linze/features/documents/domain/entity/document_entity.dart';

// class DocumentItem extends DocumentEntity{
//   const DocumentItem({
//     required super.imgPath,
//     required super.id,
//     required super.name,
//     required super.content,
//     required super.createdAt,
//   });


//   DocumentItem copyWith({
//     String? imgPath,
//     String? id,
//     String? name,
//     String? content,
//     DateTime? createdAt,
//   }) {
//     return DocumentItem(
//       imgPath: imgPath ?? this.imgPath,
//       id: id ?? this.id,
//       name: name ?? this.name,
//       content: content ?? this.content,
//       createdAt: createdAt ?? this.createdAt,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'imgPath': imgPath,
//       'id': id,
//       'name': name,
//       'content': content,
//       'createdAt': createdAt.millisecondsSinceEpoch,
//     };
//   }

//   factory DocumentItem.fromMap(Map<String, dynamic> map) {
//     return DocumentItem(
//       imgPath: map['imgPath'] as String,
//       id: map['id'] as String,
//       name: map['name'] as String,
//       content: map['content'] as String,
//       createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory DocumentItem.fromJson(String source) => DocumentItem.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'DocumentItem(imgPath: $imgPath, id: $id, name: $name, content: $content, createdAt: $createdAt)';
//   }

//   @override
//   bool operator ==(covariant DocumentItem other) {
//     if (identical(this, other)) return true;
  
//     return 
//       other.imgPath == imgPath &&
//       other.id == id &&
//       other.name == name &&
//       other.content == content &&
//       other.createdAt == createdAt;
//   }

//   @override
//   int get hashCode {
//     return imgPath.hashCode ^
//       id.hashCode ^
//       name.hashCode ^
//       content.hashCode ^
//       createdAt.hashCode;
//   }
// }
