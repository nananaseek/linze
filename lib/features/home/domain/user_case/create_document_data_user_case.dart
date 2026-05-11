import 'package:linze/features/documents/domain/use_case/add_document_user_case.dart';
import 'package:linze/features/home/domain/repository/i_home_repository.dart';

class CreateDocumentDataUserCase {
  final IHomeRepository repository;
  final AddDocumentUserCase addDocument;

  CreateDocumentDataUserCase(this.repository, this.addDocument);

  Future<void> execute() async {
    final dataToCreate = await repository.createDocumentData();
    addDocument.execute(dataToCreate);
  }
}