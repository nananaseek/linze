import 'package:linze/features/documents/domain/repository/document_font_size_repository.dart';

class DocumentFontSizeRepositoryImp extends IDocumentFontSizeRepository {
  @override
  double decreaseText(double textSize) =>
      (textSize > 8) ? textSize - 2 : textSize;

  @override
  double increaseText(double textSize) => textSize += 2;
}
