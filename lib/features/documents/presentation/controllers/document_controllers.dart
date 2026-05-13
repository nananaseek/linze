import 'package:linze/features/documents/domain/use_case/get_document_by_id_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linze/features/documents/domain/entity/document_entity.dart';
import 'package:linze/features/documents/domain/use_case/delete_document_provider.dart';
import 'package:linze/features/documents/domain/use_case/get_all_documents_provider.dart';
import 'package:linze/features/documents/domain/use_case/watch_all_documents_provider.dart';

part 'document_controllers.g.dart';

@riverpod
class DocumentController extends _$DocumentController {
  @override
  Stream<List<DocumentEntity>> build() {
    return ref.watch(watchAllDocumentsUserCaseProvider).execute();
  }

  Future<void> deleteAllDB() async {
    final useCaseGetAllDb = ref.read(getAllDocumentsUserCaseProvider);
    final useCaseDelete = ref.read(deleteDocumentUserCaseProvider);

    final db = await useCaseGetAllDb.execute();

    for (var item in db) {
      await useCaseDelete.execute(item.id);
    }
  }

  // Future<void> createDocument(DocumentEntity doc) async {
  //   final useCase = ref.watch(addDocumentUserCaseProvider);
  //   await useCase.execute(doc);
  // }
}

@riverpod
FutureOr<DocumentEntity> getDocumentById(Ref ref, String id) async {
  final useCase = ref.read(getDocumentByIdUserCaseProvider);
  return await useCase.execute(id);
}
