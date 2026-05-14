// import 'package:linze/features/documents/domain/entity/state_enum_entity.dart';
// import 'package:linze/features/documents/domain/use_case/init_document_user_case.dart';
// import 'package:linze/features/home/domain/repository/i_home_repository.dart';

// class CreateDocumentDataUserCase {
//   final IHomeRepository repository;
//   final InitDocumentUserCase addDocument;

//   CreateDocumentDataUserCase(this.repository, this.addDocument);

//   Future<void> execute({
//     required String name,
//     required String imgPath,
//   }) async {
//     final dataToCreate = repository.createDocumentData(
//       name: name,
//       imgPath: imgPath,
//       content: '',
//       state: DocumentState.loding
//     );
//     await addDocument.execute(dataToCreate);
//   }
// }
