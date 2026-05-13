import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/repository/i_document_repository.dart';

class WatchAllDocumentsUserCase {
  final IDocumentRepository repository;

  WatchAllDocumentsUserCase(this.repository);

  Stream<List<DocumentEntity>> execute() {
    return repository.watchAllDocuments();
  }
}
