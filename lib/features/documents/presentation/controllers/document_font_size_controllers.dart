import 'package:linze/features/documents/data/repository/document_font_size_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'document_font_size_controllers.g.dart';

@riverpod
class DocumentFontSizeController extends _$DocumentFontSizeController {
  @override
  double build() {
    return 16;
  }

  void increase() {
    final repo = ref.read(documentFontSizeRepositoryProvider);
    state = repo.increaseText(state); 
  }

  void decrease() {
    final repo = ref.read(documentFontSizeRepositoryProvider);
    state = repo.decreaseText(state);
  }
}