import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/entity/state_enum_entity.dart';

abstract class IHomeRepository {
  Future<DocumentEntity> testCreateLoadingDocumentData();
  Future<DocumentEntity> testCreateFinishedDocumentData();
  DocumentEntity initDocumentData({
    required String name,
    required String imgPath,
    required String content,
    required DocumentState state
  });
}
