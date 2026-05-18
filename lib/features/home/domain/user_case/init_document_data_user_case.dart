import 'package:linze/core/usecases/usecase.dart';
import 'package:linze/features/documents/domain/entity/state_enum_entity.dart';
import 'package:linze/features/documents/domain/use_case/init_document_user_case.dart';
import 'package:linze/features/home/domain/repository/i_home_repository.dart';

class InitDocumentDataUserCase {
  final IHomeRepository repository;
  final InitDocumentUserCase addDocument;

  InitDocumentDataUserCase(this.repository, this.addDocument);

  Future<void> call({
    required String name,
    required String imgPath,
  }) async {
    final dataToInit = repository.initDocumentData(
      name: name,
      imgPath: imgPath,
      content: '',
      state: DocumentState.loding
    );
    await addDocument(dataToInit);
  }
}
