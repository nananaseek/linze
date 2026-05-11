import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/repository/i_document_repository.dart';

class GetDocumentByIdUserCase {
  final IDocumentRepository repository;

  GetDocumentByIdUserCase(this.repository);

  Future<DocumentEntity> execute(String id) {
    return repository.getDocumentById(id);
  }
}
