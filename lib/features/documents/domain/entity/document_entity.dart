import 'package:equatable/equatable.dart';

class DocumentEntity extends Equatable {
  final String id;
  final String name;
  final String content;
  final String imgPath;
  final DateTime createdAt;

  const DocumentEntity({
    required this.id,
    required this.name,
    required this.imgPath,
    required this.content,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, name, imgPath];
}
