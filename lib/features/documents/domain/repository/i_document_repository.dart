import 'package:linze/features/documents/domain/entity/document_entity.dart';

abstract class IDocumentRepository {
  Future<List<DocumentEntity>> getAllDocuments();
  Future<DocumentEntity> getDocumentById(String id);
  Future<void> addDocument(DocumentEntity doc);
  Future<void> deleteDocument(String id);
}