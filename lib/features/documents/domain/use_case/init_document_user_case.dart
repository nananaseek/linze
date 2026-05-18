import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/repository/i_document_repository.dart';

class InitDocumentUserCase {
  final IDocumentRepository repository;

  InitDocumentUserCase(this.repository);

  Future<void> call(DocumentEntity doc) {
    return repository.initDocument(doc);
  }
}