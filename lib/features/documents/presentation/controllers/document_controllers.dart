import 'package:linze/features/documents/domain/entity/document_entity.dart';
// import 'package:linze/features/documents/domain/use_case/add_document_provider.dart';
import 'package:linze/features/documents/domain/use_case/delete_document_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:linze/features/documents/domain/use_case/get_all_documents_provider.dart';

part 'document_controllers.g.dart';

@riverpod
class DocumentController extends _$DocumentController {
    @override
    Future<List<DocumentEntity>> build() async {
        final useCase = ref.read(getAllDocumentsUserCaseProvider);
        return await useCase.execute();
    }

    Future<void> deleteAllDB() async {
      final useCaseGetAllDb = ref.watch(getAllDocumentsUserCaseProvider);
      final useCaseDelete = ref.watch(deleteDocumentUserCaseProvider);

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
