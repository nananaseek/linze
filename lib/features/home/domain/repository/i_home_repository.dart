import 'package:linze/features/documents/domain/entity/document_entity.dart';

abstract class IHomeRepository {
  Future<DocumentEntity> createDocumentData();
}