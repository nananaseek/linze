import 'package:linze/features/home/data/services/gallery_service_repository.dart';
import 'package:linze/features/home/domain/user_case/save_photo_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'save_photo_provider.g.dart';

@riverpod
SavePhotoUseCase savePhotoUseCase (Ref ref) {
  final repository = ref.read(galleryServiceProvider);
  return SavePhotoUseCase(repository: repository);
}