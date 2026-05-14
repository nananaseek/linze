import 'package:linze/features/home/data/services/gallery_service_repository.dart';
import 'package:linze/features/home/domain/user_case/take_image_from_gallery_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'take_image_from_gallery_provider.g.dart';

@riverpod
TakeImageFromGalleryUseCase takeImageFromGalleryUserCase (Ref ref) {
  final repository = ref.watch(galleryServiceProvider);
  return TakeImageFromGalleryUseCase(repository: repository);
}