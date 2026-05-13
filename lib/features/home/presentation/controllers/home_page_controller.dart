import 'package:linze/features/documents/presentation/controllers/document_controllers.dart';
import 'package:linze/features/home/domain/user_case/create_document_data_provider.dart';
import 'package:linze/features/home/domain/user_case/test_create_finished_document_data_provider.dart';
import 'package:linze/features/home/domain/user_case/test_create_loading_document_data_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_controller.g.dart';

@riverpod
class HomePageController extends _$HomePageController {
  @override
  void build() {
    
  }

  // TODO delete this method in prod
  Future<void> deleteAllDB() async => await ref.watch(documentControllerProvider.notifier).deleteAllDB();
  
  Future<void> createDocument() async {
    final usecase = ref.watch(createDocumentDataUserCaseProvider);
    await usecase.execute();
  }

  Future<void> testCreateLoadingDocument() async {
    final usecase = ref.watch(testCreateLoadingDocumentDataUserCaseProvider);
    await usecase.execute();
  }

  Future<void> testCreateFinishedDocument() async {
    final usecase = ref.watch(testCreateFinishedDocumentDataUserCaseProvider);
    await usecase.execute();
  }
}