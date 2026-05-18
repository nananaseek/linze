import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/repository/i_document_repository.dart';

class GetAllDocumentsUserCase {
  final IDocumentRepository repository;

  GetAllDocumentsUserCase(this.repository);

  Future<List<DocumentEntity>> call() {
    return repository.getAllDocuments();
  }
}
