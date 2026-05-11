import 'package:linze/core/utils.dart';
import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/home/domain/repository/i_home_repository.dart';

class HomeRepositoryImp extends IHomeRepository{
  
  @override
  Future<DocumentEntity> createDocumentData() async {
    final fakeData = DocumentEntity(id: 'id', name: 'huy1', imgPath: 'imgPath', content: lorem, createdAt:DateTime.now());
    
    return fakeData;
  }

}