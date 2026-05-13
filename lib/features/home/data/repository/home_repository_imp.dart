import 'package:linze/core/utils.dart';
import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/entity/state_enum_entity.dart';
import 'package:linze/features/home/domain/repository/i_home_repository.dart';

class HomeRepositoryImp extends IHomeRepository {
  @override
  Future<DocumentEntity> testCreateLoadingDocumentData() async {
    final fakeData = DocumentEntity(
      id: 'id',
      name: 'huy1',
      imgPath: 'assets/images/p.jpg',
      content: lorem,
      state: DocumentState.loding,
      createdAt: DateTime.now(),
    );

    return fakeData;
  }

  @override
  Future<DocumentEntity> testCreateFinishedDocumentData() async {
    final fakeData = DocumentEntity(
      id: 'id',
      name: 'huy1',
      imgPath: 'assets/images/p.jpg',
      content: lorem,
      state: DocumentState.finish,
      createdAt: DateTime.now(),
    );

    return fakeData;
  }
  
  @override
  Future<DocumentEntity> createDocumentData() {
    // TODO: implement createDocument
    throw UnimplementedError();
  }

}
