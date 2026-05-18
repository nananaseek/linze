import 'package:linze/features/documents/domain/repository/i_document_repository.dart';

class DeleteDocumentUserCase {
  final IDocumentRepository repository;

  DeleteDocumentUserCase(this.repository);

  Future<void> call(String id) {
    return repository.deleteDocument(id);
  }
}