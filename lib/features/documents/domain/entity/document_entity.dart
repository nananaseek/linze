import 'package:equatable/equatable.dart';

import 'state_enum_entity.dart';

class DocumentEntity extends Equatable {
  final String id;
  final String name;
  final String? content;
  final String imgPath;
  final DocumentState state;
  final DateTime createdAt;

  const DocumentEntity({
    required this.id,
    required this.name,
    required this.imgPath,
    this.content,
    required this.createdAt,
    required this.state,
  });

  @override
  List<Object?> get props => [id, name, content, imgPath, state, createdAt];
}
