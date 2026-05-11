import 'package:linze/features/documents/domain/use_case/add_document_provider.dart';
import 'package:linze/features/documents/presentation/controllers/document_controllers.dart';
import 'package:linze/features/home/domain/user_case/create_document_data_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_controller.g.dart';

@riverpod
class HomePageController extends _$HomePageController {
  @override
  void build() {
    
  }

  Future<void> deleteAllDB() async => await ref.watch(documentControllerProvider.notifier).deleteAllDB();
  
  Future<void> createDocument() async {
    final usecase = ref.watch(createDocumentDataUserCaseProvider);
    await usecase.execute();
  }
}