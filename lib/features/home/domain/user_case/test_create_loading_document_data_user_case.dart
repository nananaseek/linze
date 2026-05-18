import 'package:linze/features/documents/domain/use_case/init_document_user_case.dart';
import 'package:linze/features/home/domain/repository/i_home_repository.dart';

class TestCreateLodingDocumentDataUserCase {
  final IHomeRepository repository;
  final InitDocumentUserCase addDocument;

  TestCreateLodingDocumentDataUserCase(this.repository, this.addDocument);

  Future<void> call() async {
    final dataToCreate = await repository.testCreateLoadingDocumentData();
    addDocument(dataToCreate);
  }
}