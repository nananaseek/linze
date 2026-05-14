import 'package:linze/features/home/domain/repository/i_gallery_repository.dart';

class TakeImageFromGalleryUseCase {
  final IGalleryRepository repository;

  TakeImageFromGalleryUseCase({required this.repository});

  Future<String?> execute() async {
    final imagePath = await repository.takeImage();
    return imagePath;
  }
}