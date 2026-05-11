import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/repository/i_document_repository.dart';

class AddDocumentUserCase {
  final IDocumentRepository repository;

  AddDocumentUserCase(this.repository);

  Future<void> execute(DocumentEntity doc) {
    return repository.addDocument(doc);
  }
}